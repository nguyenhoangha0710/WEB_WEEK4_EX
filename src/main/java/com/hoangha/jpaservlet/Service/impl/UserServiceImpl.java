package com.hoangha.jpaservlet.Service.impl;

import com.hoangha.jpaservlet.DTO.UserDTO;
import com.hoangha.jpaservlet.Entity.UserEntity;
import com.hoangha.jpaservlet.Respository.UserRespository;
import com.hoangha.jpaservlet.Respository.impl.UserRespositoryImpl;
import com.hoangha.jpaservlet.Service.UserService;
import jakarta.servlet.http.Part;

public class UserServiceImpl implements UserService {

    private UserRespository userRespository = new UserRespositoryImpl();

    @Override
    public UserDTO getUserByGmail(String gmail) {
        UserEntity userEntity = userRespository.getUserByGmail(gmail);
        UserDTO userDTO = new UserDTO();
        userDTO.setGmail(userEntity.getGmail());
        userDTO.setAddress(userEntity.getAddress());
        userDTO.setFull_name(userEntity.getFull_name());
        userDTO.setPhone_number(userEntity.getPhone_number());
        userDTO.setProduct_image(userEntity.getProduct_image());
        userDTO.setPassword(userEntity.getPassword());

        // Chuyển ảnh sang Base64 để hiển thị trong JSP
        if (userEntity.getProduct_image() != null) {
            String base64 = java.util.Base64.getEncoder().encodeToString(userEntity.getProduct_image());
            userDTO.setBase64Image(base64);
        }

        return userDTO;
    }

    @Override
    public boolean updateUserProfile(String gmail, String address, String fullname, String phone, Part imagePart) {
        try {
            UserEntity userEntity = userRespository.getUserByGmail(gmail);
            if (userEntity == null) return false;

            if (address != null) userEntity.setAddress(address);
            if (fullname != null) userEntity.setFull_name(fullname);
            if (phone != null) userEntity.setPhone_number(phone);

//            // Nếu upload ảnh mới
//            if (imagePart != null && imagePart.getSize() > 0) {
//                try (InputStream is = imagePart.getInputStream();
//                     ByteArrayOutputStream baos = new ByteArrayOutputStream()) {
//
//                    byte[] buffer = new byte[1024];
//                    int read;
//                    while ((read = is.read(buffer)) != -1) {
//                        baos.write(buffer, 0, read);
//                    }
//
//                    userEntity.setProduct_image(baos.toByteArray());
//                }
//            }

            // Cập nhật entity trong DB
            return userRespository.updateUser(userEntity);

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
