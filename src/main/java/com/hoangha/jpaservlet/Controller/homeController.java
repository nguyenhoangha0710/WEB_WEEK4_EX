package com.hoangha.jpaservlet.Controller;

import com.hoangha.jpaservlet.DTO.ProductDTO;
import com.hoangha.jpaservlet.Service.ProductService;
import com.hoangha.jpaservlet.Service.impl.ProductServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "homeController", urlPatterns = {"/home"})
public class homeController extends HttpServlet {
    private ProductService productService = new ProductServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String action = req.getParameter("action");

        if ("editForm".equals(action)) {
            int id = Integer.parseInt(req.getParameter("id"));
            System.out.println("DO get "+ id);
            ProductDTO product = productService.GetProductByID(id);
            System.out.println(product);
            req.setAttribute("product", product);
            req.getRequestDispatcher("/view/editProduct.jsp").forward(req, resp);
            return;
        }

        List<ProductDTO> products = productService.findAll();
        System.out.println(products); // kiểm tra có dữ liệu không
        req.setAttribute("products", products);
        req.getRequestDispatcher("/view/homeView.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        // lay hanh dong tu homeView.jsp
        String action = req.getParameter("action");

        try {
            if ("add".equals(action)) {
                // Lấy dữ liệu từ form thêm
                String code = req.getParameter("code");
                String name = req.getParameter("name");
                String priceStr = req.getParameter("price");

                ProductDTO product = new ProductDTO();
                product.setCode(code);
                product.setName(name);
//                product.setPrice((double) Integer.parseInt(priceStr));
                product.setPrice(Double.parseDouble(priceStr));
                productService.addProduct(product);
            }
            else if ("edit".equals(action)) {
                // Lấy dữ liệu từ form sửa
                int id = Integer.parseInt(req.getParameter("id"));
                System.out.println("Id sua ne : "+id);
                String code = req.getParameter("code");
                String name = req.getParameter("name");
                String priceStr = req.getParameter("price");

                ProductDTO product = new ProductDTO();
                product.setId(id);
                product.setCode(code);
                product.setName(name);
//                product.setPrice((double) Integer.parseInt(priceStr));
                product.setPrice(Double.parseDouble(priceStr));

                productService.updateProduct(product);
            }
            else if ("delete".equals(action)) {
                // Xóa theo id
                int id = Integer.parseInt(req.getParameter("productId"));
                productService.deleteProduct(id);
            }
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Lỗi: " + e.getMessage());
        }

        // Sau khi xử lý -> quay lại trang home
        List<ProductDTO> products = productService.findAll();
        System.out.println(products); // kiểm tra có dữ liệu không
        req.setAttribute("products", products);
        req.getRequestDispatcher("/view/homeView.jsp").forward(req, resp);
    }
}
