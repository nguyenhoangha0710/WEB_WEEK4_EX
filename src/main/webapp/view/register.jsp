<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <title>Đăng ký tài khoản</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
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
      background: rgba(255, 255, 255, 0.95);
      backdrop-filter: blur(10px);
      border-radius: 1rem;
      box-shadow: 0 10px 15px rgba(0, 0, 0, 0.1);
      animation: fadeInUp 0.6s ease-out;
    }
    .input-field {
      transition: all 0.3s ease;
    }
    .input-field:focus {
      border-color: #3b82f6;
      box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
      transform: scale(1.02);
    }
    .btn {
      transition: all 0.3s ease;
    }
    .btn:hover {
      transform: translateY(-2px) scale(1.05);
      background-color: #2563eb;
    }
    .error-message {
      animation: shake 0.3s ease-in-out;
    }
    .success-message {
      animation: bounce 0.5s ease-in-out;
    }
    @keyframes shake {
      0%, 100% { transform: translateX(0); }
      25%, 75% { transform: translateX(-5px); }
      50% { transform: translateX(5px); }
    }
    @keyframes bounce {
      0%, 100% { transform: translateY(0); }
      50% { transform: translateY(-5px); }
    }
  </style>
</head>
<body>
<div class="flex items-center justify-center min-h-screen">
  <div class="card w-full max-w-md p-8 animate__animated animate__fadeInUp">
    <h2 class="text-2xl font-bold text-center text-gray-800 mb-6 animate__animated animate__pulse">Đăng ký tài khoản</h2>

    <form action="${pageContext.request.contextPath}/register" method="post" class="space-y-6">
      <div>
        <label for="gmail" class="block text-sm font-medium text-gray-700">Gmail:</label>
        <input type="email" id="gmail" name="gmail" required
               class="input-field w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 animate__animated animate__fadeIn">
      </div>

      <div>
        <label for="password" class="block text-sm font-medium text-gray-700">Mật khẩu:</label>
        <input type="password" id="password" name="password" required
               class="input-field w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 animate__animated animate__fadeIn animate__delay-1s">
      </div>

      <div>
        <label for="confirm" class="block text-sm font-medium text-gray-700">Xác nhận mật khẩu:</label>
        <input type="password" id="confirm" name="confirm" required
               class="input-field w-full mt-1 px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500 animate__animated animate__fadeIn animate__delay-2s">
      </div>

      <button type="submit"
              class="btn w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 animate__animated animate__bounceIn">
        Đăng ký
      </button>
    </form>

    <c:if test="${not empty errorMsg}">
      <p class="mt-4 text-center text-sm text-red-600 error-message animate__animated animate__shakeX">${errorMsg}</p>
    </c:if>
    <c:if test="${not empty successMsg}">
      <p class="mt-4 text-center text-sm text-green-600 success-message animate__animated animate__bounce">${successMsg}</p>
    </c:if>

    <p class="mt-4 text-center text-sm text-gray-600 animate__animated animate__fadeIn animate__delay-3s">
      Đã có tài khoản?
      <a href="${pageContext.request.contextPath}/login" class="text-blue-600 hover:underline hover:text-blue-800 transition-colors duration-300">Quay lại đăng nhập</a>
    </p>
  </div>
</div>
</body>
</html>