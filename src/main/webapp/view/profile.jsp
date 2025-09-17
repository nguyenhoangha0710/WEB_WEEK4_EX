<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Thông tin cá nhân</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-4">

    <!-- Thông báo -->
    <c:if test="${errorMessage != null && errorMessage != ''}">
        <div class="alert alert-danger d-flex align-items-center" role="alert">
            <i class="bi bi-exclamation-triangle-fill me-2"></i>
            <span>${errorMessage}</span>
        </div>
    </c:if>

    <c:if test="${successMessage != null && successMessage != ''}">
        <div class="alert alert-success d-flex align-items-center" role="alert">
            <i class="bi bi-check-circle-fill me-2"></i>
            <span>${successMessage}</span>
        </div>
    </c:if>

    <!-- Thông tin user -->
    <div class="card shadow-sm">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Thông tin cá nhân</h4>
        </div>
        <div class="card-body">
            <form action="profile" method="post">

                <div class="mb-3">
                    <label class="form-label">Họ tên</label>
                    <input type="text" class="form-control" name="fullname"
                           value="${user.full_name}" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="email" class="form-control" name="gmail"
                           value="${user.gmail}" readonly>
                </div>

                <div class="mb-3">
                    <label class="form-label">Số điện thoại</label>
                    <input type="text" class="form-control" name="phone"
                           value="${user.phone_number}">
                </div>

                <div class="mb-3">
                    <label class="form-label">Địa chỉ</label>
                    <input type="text" class="form-control" name="address"
                           value="${user.address}">
                </div>

                <button type="submit" class="btn btn-success">
                    <i class="bi bi-save me-1"></i> Cập nhật
                </button>

                <a href="${pageContext.request.contextPath}/home" class="btn btn-secondary">
                    <i class="bi bi-arrow-left-circle me-1"></i> Quay về
                </a>
            </form>
        </div>
    </div>
</div>

</body>
</html>
