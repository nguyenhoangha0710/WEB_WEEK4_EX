package com.hoangha.jpaservlet.Controller;


import com.hoangha.jpaservlet.DTO.UserDTO;
import com.hoangha.jpaservlet.Service.UserService;
import com.hoangha.jpaservlet.Service.impl.UserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet(name = "profileController", urlPatterns = {"/profile"})
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
        maxFileSize = 1024 * 1024 * 10,      // 10 MB
        maxRequestSize = 1024 * 1024 * 50    // 50 MB
)
public class ProfileController extends HttpServlet {
    private UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // Ví dụ: lấy gmail từ query string ?gmail=...

        HttpSession session = req.getSession();
        String gmail = (String) session.getAttribute("gmail");

        if (gmail != null && !gmail.isEmpty()) {
            UserDTO user = userService.getUserByGmail(gmail);
            if (user != null) {
                System.out.println(user.getFull_name());
                req.setAttribute("user", user);
                req.getRequestDispatcher("/view/profile.jsp").forward(req, resp);

                return;
            }
        }
        // Nếu không có user thì trả về thông báo
        resp.getWriter().println("Không tìm thấy user với gmail: " + gmail);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        String gmail = (String) session.getAttribute("gmail");

        if (gmail != null && !gmail.isEmpty()) {
            UserDTO user = userService.getUserByGmail(gmail);

            // Lấy dữ liệu từ form
            String address = req.getParameter("address");
            String fullname = req.getParameter("fullname");
            String phone = req.getParameter("phone");
            String password = user.getPassword();

//            Part imagePart = req.getPart("image");

            // Nếu có file upload thì dùng Servlet 3.0 @MultipartConfig hoặc Apache Commons FileUpload


            if (gmail != null) {
                // Gọi service để update user
                boolean updated = userService.updateUserProfile(gmail, address, fullname, phone, null);
                if (updated) {
                    req.setAttribute("successMessage", "Cập nhật thông tin thành công!");
                } else {
                    req.setAttribute("errorMessage", "Không thể cập nhật thông tin.");
                }
                // Load lại user mới
                req.setAttribute("user", userService.getUserByGmail(gmail));
                req.getRequestDispatcher("/view/profile.jsp").forward(req, resp);
            } else {
                resp.sendRedirect(req.getContextPath() + "/login.jsp");
            }
        }
    }
}
