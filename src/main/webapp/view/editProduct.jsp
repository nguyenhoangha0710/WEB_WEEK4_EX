<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Sửa sản phẩm</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 min-h-screen flex justify-center items-center">

<div class="bg-white shadow-lg rounded-lg p-8 w-full max-w-md">
  <h1 class="text-2xl font-bold mb-6 text-center">Sửa sản phẩm</h1>

  <!-- Form gửi về HomeController (POST) với action=edit -->
  <form action="home" method="post" class="space-y-4">
    <input type="hidden" name="action" value="edit" />
    <input type="hidden" name="id" value="${product.id}" />

    <!-- Mã SP -->
    <div>
      <label class="block mb-1 font-medium">Mã sản phẩm</label>
      <input type="text" name="code" value="${product.code}" required
             class="w-full border border-gray-300 rounded px-3 py-2 focus:ring focus:ring-blue-200" />
    </div>

    <!-- Tên SP -->
    <div>
      <label class="block mb-1 font-medium">Tên sản phẩm</label>
      <input type="text" name="name" value="${product.name}" required
             class="w-full border border-gray-300 rounded px-3 py-2 focus:ring focus:ring-blue-200" />
    </div>

    <!-- Giá -->
    <div>
      <label class="block mb-1 font-medium">Giá</label>
      <input type="number" name="price" value="${product.price}" required step="0.1"
             class="w-full border border-gray-300 rounded px-3 py-2 focus:ring focus:ring-blue-200" />
    </div>

    <!-- Nút hành động -->
    <div class="flex justify-between mt-6">
      <a href="home" class="bg-gray-400 hover:bg-gray-500 text-white px-4 py-2 rounded">Quay lại</a>
      <button type="submit" class="bg-green-600 hover:bg-green-700 text-white px-4 py-2 rounded">Lưu</button>
    </div>
  </form>
</div>

</body>
</html>
