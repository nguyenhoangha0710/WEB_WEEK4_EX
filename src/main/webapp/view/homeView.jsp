<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<div class="d-flex justify-content-between align-items-center mb-3">
  <h1>Quản lý sản phẩm</h1>
  <a href="view/addProduct.jsp" class="btn btn-success">Thêm sản phẩm</a>
</div>

<table class="table table-striped table-hover shadow-sm">
  <thead class="table-dark">
  <tr>
    <th>ID</th>
    <th>Mã SP</th>
    <th>Tên SP</th>
    <th>Giá</th>
    <th>Hành động</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="product" items="${products}">
    <tr>
      <td>${product.id}</td>
      <td>${product.code}</td>
      <td>${product.name}</td>
      <td>${product.price}</td>
      <td>
        <div class="d-flex gap-2">
          <form action="home" method="get">
            <input type="hidden" name="action" value="editForm">
            <input type="hidden" name="id" value="${product.id}">
            <button class="btn btn-warning btn-sm">Sửa</button>
          </form>
          <form action="home" method="post" onsubmit="return confirm('Bạn có chắc muốn xóa sản phẩm này?');">
            <input type="hidden" name="action" value="delete">
            <input type="hidden" name="productId" value="${product.id}">
            <button class="btn btn-danger btn-sm">Xóa</button>
          </form>
        </div>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
