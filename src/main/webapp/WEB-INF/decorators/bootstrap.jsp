<div class="container py-4">
  <h1 class="mb-4">Quản lý sản phẩm</h1>
  <a href="view/addProduct.jsp" class="btn btn-success mb-3">Thêm sản phẩm</a>
  <div class="table-responsive">
    <table class="table table-bordered table-hover align-middle">
      <thead class="table-primary text-center">
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
          <td class="text-center">${product.id}</td>
          <td class="text-center">${product.code}</td>
          <td>${product.name}</td>
          <td class="text-end">${product.price}</td>
          <td class="text-center">
            <div class="d-flex justify-content-center gap-2">
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
  </div>
</div>
