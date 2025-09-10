<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!----%>
<%--Taglib JSTL Core: Cho phép sử dụng các thẻ logic như if, forEach, choose, ...--%>
<%---->--%>

<%--<html>--%>
<%--<head>--%>
<%--    <title>Đăng nhập hệ thống</title>--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <!-- Responsive design -->--%>

<%--    <!-- Tailwind CSS CDN: Thư viện CSS tiện lợi cho layout, màu sắc, padding, margin, ... -->--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">--%>

<%--    <!-- Animate.css CDN: Thư viện animation CSS sẵn có -->--%>
<%--    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">--%>

<%--    <style>--%>
<%--        /* BODY - toàn trang */--%>
<%--        body {--%>
<%--            background: linear-gradient(to right, #6b7280, #1f2937); /* gradient nền */--%>
<%--            height: 100vh; /* chiếm trọn chiều cao */--%>
<%--            display: flex; /* dùng flexbox */--%>
<%--            justify-content: center; /* căn giữa theo ngang */--%>
<%--            align-items: center; /* căn giữa theo dọc */--%>
<%--            font-family: 'Inter', sans-serif; /* font chữ */--%>
<%--        }--%>

<%--        /* CARD - khung login */--%>
<%--        .card {--%>
<%--            background: rgba(255, 255, 255, 0.95); /* nền trắng trong suốt nhẹ */--%>
<%--            backdrop-filter: blur(10px); /* làm mờ nền phía sau */--%>
<%--            border-radius: 1rem; /* bo tròn */--%>
<%--            box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1); /* đổ bóng */--%>
<%--            animation: fadeInUp 0.6s ease-out; /* animation fadeIn khi load */--%>
<%--        }--%>

<%--        /* Input fields */--%>
<%--        .input-field {--%>
<%--            transition: all 0.3s ease; /* hiệu ứng chuyển đổi mượt */--%>
<%--        }--%>

<%--        /* Input focus */--%>
<%--        .input-field:focus {--%>
<%--            border-color: #3b82f6; /* viền xanh */--%>
<%--            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1); /* shadow khi focus */--%>
<%--            transform: scale(1.02); /* phóng to nhẹ */--%>
<%--        }--%>

<%--        /* Button */--%>
<%--        .btn {--%>
<%--            transition: all 0.3s ease;--%>
<%--        }--%>

<%--        .btn:hover {--%>
<%--            transform: translateY(-2px) scale(1.05); /* nâng lên nhẹ + phóng to */--%>
<%--            background-color: #2563eb; /* đổi màu khi hover */--%>
<%--        }--%>

<%--        /* Thông báo lỗi shake animation */--%>
<%--        .error-message {--%>
<%--            animation: shake 0.3s ease-in-out;--%>
<%--        }--%>

<%--        /* Keyframe shake animation */--%>
<%--        @keyframes shake {--%>
<%--            0%, 100% { transform: translateX(0); }--%>
<%--            25%, 75% { transform: translateX(-5px); }--%>
<%--            50% { transform: translateX(5px); }--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>

<%--<body>--%>
<%--<div class="flex items-center justify-center min-h-screen">--%>
<%--    <!-- Container chính, căn giữa bằng flexbox -->--%>

<%--    <div class="card w-full max-w-md p-8 animate__animated animate__fadeInUp">--%>
<%--        <!-- Card login -->--%>
<%--        <h2 class="text-2xl font-bold text-center text-gray-800 mb-6 animate__animated animate__pulse">--%>
<%--            Đăng nhập hệ thống--%>
<%--        </h2>--%>

<%--        <!-- FORM đăng nhập -->--%>
<%--        <form action="${pageContext.request.contextPath}/login" method="post" class="space-y-6">--%>
<%--            <!-- space-y-6: khoảng cách giữa các field -->--%>

<%--            <!-- Input Gmail -->--%>
<%--            <div>--%>
<%--                <label for="gmail" class="block text-sm font-medium text-gray-700">Gmail:</label>--%>
<%--                <input type="text" id="gmail" name="username" required--%>
<%--                       class="input-field w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg--%>
<%--                       focus:outline-none focus:ring-2 focus:ring-blue-500 animate__animated animate__fadeIn">--%>
<%--            </div>--%>

<%--            <!-- Input Password -->--%>
<%--            <div>--%>
<%--                <label for="password" class="block text-sm font-medium text-gray-700">Mật khẩu:</label>--%>
<%--                <input type="password" id="password" name="password" required--%>
<%--                       class="input-field w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg--%>
<%--                       focus:outline-none focus:ring-2 focus:ring-blue-500 animate__animated animate__fadeIn animate__delay-1s">--%>
<%--            </div>--%>

<%--            <!-- Button Submit -->--%>
<%--            <button type="submit"--%>
<%--                    class="btn w-full bg-blue-600 text-white py-2 rounded-lg--%>
<%--                    hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2--%>
<%--                    animate__animated animate__bounceIn">--%>
<%--                Đăng nhập--%>
<%--            </button>--%>

<%--            <!-- Link quên mật khẩu -->--%>
<%--            <div class="text-center mt-4">--%>
<%--                <a href="${pageContext.request.contextPath}/view/forgotPassword.jsp"--%>
<%--                   class="text-blue-600 hover:underline hover:text-blue-800 transition-colors duration-300--%>
<%--                   animate__animated animate__fadeIn animate__delay-1s">--%>
<%--                    Quên mật khẩu?--%>
<%--                </a>--%>
<%--            </div>--%>
<%--        </form>--%>

<%--        <!-- Link đăng ký tài khoản -->--%>
<%--        <p class="mt-4 text-center text-sm text-gray-600 animate__animated animate__fadeIn animate__delay-2s">--%>
<%--            Chưa có tài khoản?--%>
<%--            <a href="${pageContext.request.contextPath}/view/register.jsp"--%>
<%--               class="text-blue-600 hover:underline hover:text-blue-800 transition-colors duration-300">--%>
<%--                Đăng ký ngay--%>
<%--            </a>--%>
<%--        </p>--%>

<%--        <!-- Hiển thị thông báo lỗi nếu có -->--%>
<%--        <c:if test="${not empty errorMsg}">--%>
<%--            <p class="mt-4 text-center text-sm text-red-600 error-message animate__animated animate__shakeX">--%>
<%--                    ${errorMsg}--%>
<%--            </p>--%>
<%--        </c:if>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Đăng nhập hệ thống</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Animate.css -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #6b7280, #1f2937);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Inter', sans-serif;
        }

        .card {
            border-radius: 1rem;
            backdrop-filter: blur(10px);
        }

        .error-message {
            animation: shake 0.3s ease-in-out;
        }

        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            25%, 75% { transform: translateX(-5px); }
            50% { transform: translateX(5px); }
        }
    </style>
</head>

<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card p-4 shadow animate__animated animate__fadeInUp">
                <h2 class="text-center mb-4 animate__animated animate__pulse">Đăng nhập hệ thống</h2>

                <!-- FORM đăng nhập -->
                <form action="${pageContext.request.contextPath}/login" method="post">
                    <div class="mb-3">
                        <label for="gmail" class="form-label">Gmail:</label>
                        <input type="text" class="form-control" id="gmail" name="username" required>
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Mật khẩu:</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>

                    <button type="submit" class="btn btn-primary w-100 animate__animated animate__bounceIn">
                        Đăng nhập
                    </button>

                    <div class="text-center mt-3">
                        <a href="${pageContext.request.contextPath}/view/forgotPassword.jsp" class="text-decoration-none">
                            Quên mật khẩu?
                        </a>
                    </div>
                </form>

                <p class="mt-3 text-center text-muted">
                    Chưa có tài khoản?
                    <a href="${pageContext.request.contextPath}/view/register.jsp" class="text-decoration-none">Đăng ký ngay</a>
                </p>

                <!-- Hiển thị thông báo lỗi nếu có -->
                <c:if test="${not empty errorMsg}">
                    <p class="text-center text-danger mt-2 error-message animate__animated animate__shakeX">
                            ${errorMsg}
                    </p>
                </c:if>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS (tùy chọn) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

