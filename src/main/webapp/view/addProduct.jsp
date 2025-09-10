<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 min-h-screen flex justify-center items-center">

<div class="bg-white shadow-lg rounded-lg p-8 w-full max-w-md">
    <h1 class="text-2xl font-bold mb-6 text-center">Thêm sản phẩm mới</h1>

    <!-- Form gửi về HomeController (POST) với action=add -->
    <form action="${pageContext.request.contextPath}/home" method="post" class="space-y-4">
        <input type="hidden" name="action" value="add" />

        <!-- Mã SP -->
        <div>
            <label class="block mb-1 font-medium">Mã sản phẩm</label>
            <input type="text" name="code" required
                   class="w-full border border-gray-300 rounded px-3 py-2 focus:ring focus:ring-blue-200" />
        </div>

        <!-- Tên SP -->
        <div>
            <label class="block mb-1 font-medium">Tên sản phẩm</label>
            <input type="text" name="name" required
                   class="w-full border border-gray-300 rounded px-3 py-2 focus:ring focus:ring-blue-200" />
        </div>

        <!-- Giá -->
        <div>
            <label class="block mb-1 font-medium">Giá</label>
            <input type="number" name="price" required step="0.1"
                   class="w-full border border-gray-300 rounded px-3 py-2 focus:ring focus:ring-blue-200" />
        </div>

        <!-- Nút hành động -->
        <div class="flex justify-between mt-6">
            <a href="${pageContext.request.contextPath}/home" class="bg-gray-400 hover:bg-gray-500 text-white px-4 py-2 rounded">Quay lại</a>
            <button type="submit" class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded">Thêm</button>
        </div>
    </form>
</div>

</body>
</html>
