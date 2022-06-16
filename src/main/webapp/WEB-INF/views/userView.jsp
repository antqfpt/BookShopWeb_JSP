
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<fmt:setLocale value="vi_VN"/>
<!DOCTYPE html>
<html lang="vi">

<head>
  <jsp:include page="_meta.jsp"/>
  <title>Tài Khoản</title>
</head>

<body>
<%--<jsp:include page="_header.jsp"/>--%>

<header class="section-header">
  <section class="header-main border-bottom">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-3 py-3">
          <a class="text-body" href="./home.html">
            <h3>Shop Bán Sách</h3>
          </a>
        </div> <!-- col.// -->
        <div class="col-lg-4 col-xl-5">
          <form action="#" class="search">
            <div class="input-group w-100">
              <input type="text" class="form-control" placeholder="Nhập từ khóa cần tìm ...">
              <button class="btn btn-primary" type="button">
                <i class="bi bi-search"></i>
              </button>
            </div>
          </form>
        </div> <!-- col.// -->
        <div class="col-lg-5 col-xl-4">
          <ul class="nav col-12 col-lg-auto my-2 my-lg-0 justify-content-center justify-content-lg-end text-small">
            <li>
              <a href="#" class="nav-link text-body">
                <i class="bi bi-person d-block text-center fs-3"></i>
                Tài khoản
              </a>
            </li>
            <li>
              <a href="#" class="nav-link text-body">
                <i class="bi bi-list-check d-block text-center fs-3"></i>
                Đơn hàng
              </a>
            </li>
            <li>
              <a href="#" class="nav-link text-body">
                <i class="bi bi-cart d-block text-center fs-3"></i>
                Giỏ hàng
              </a>
            </li>
          </ul>
        </div> <!-- col.// -->
      </div> <!-- row.// -->
    </div> <!-- container.// -->
  </section> <!-- header-main.// -->
</header> <!-- section-header.// -->

<nav class="navbar navbar-main navbar-expand-lg navbar-light border-bottom">
  <div class="container">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
             aria-expanded="false">
            <strong><i class="bi bi-list"></i> Danh mục sản phẩm</strong>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Sách giáo khoa</a></li>
            <li><a class="dropdown-item" href="#">Sách khoa học</a></li>
            <li><a class="dropdown-item" href="#">Truyện tranh</a></li>
            <li><a class="dropdown-item" href="#">Tiểu thuyết</a></li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li><a class="dropdown-item" href="#">Tất cả danh mục</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Sản phẩm mới</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Sản phẩm bán chạy</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Khuyến mãi</a>
        </li>
      </ul>
      <a class="btn btn-light me-2" href="#" role="button">Đăng ký</a>
      <a class="btn btn-primary" href="#" role="button">Đăng nhập</a>
    </div>
  </div> <!-- container.// -->
</nav> <!-- navbar-main.// -->

<section class="section-pagetop bg-light">
  <div class="container">
    <h2 class="title-page">Tài khoản</h2>
  </div> <!-- container.// -->
</section> <!-- section-pagetop.// -->

<section class="section-content padding-y">
  <div class="container">
    <div class="row">

      <aside class="col-md-3 mb-md-0 mb-3">
        <nav class="list-group">
          <a class="list-group-item active" href="#"> Tài khoản </a>
          <a class="list-group-item" href="#"> Đơn hàng của tôi </a>
          <a class="list-group-item" href="#"> Sản phẩm yêu thích </a>
          <a class="list-group-item" href="#"> Đổi mật khẩu </a>
          <a class="list-group-item" href="#"> Thiết đặt </a>
          <a class="list-group-item" href="#"> Đăng xuất </a>
        </nav>
      </aside> <!-- col.// -->

      <main class="col-md-9">
        <article class="card">
          <div class="card-body">
            <div>
              <h5>Nguyễn Thị A</h5>
              <p>nguyenthia@gmail.com</p>
            </div>
            <hr>
            <div>
              <p class="bi bi-map d-block lh-lg">
                Địa chỉ:
                <br>
                Đường Nguyễn Duy Trinh, Phường Bình Trưng Đông, Quận 2, TP.HCM
              </p>
            </div>
            <article class="card-group">
              <figure class="card bg-light">
                <div class="p-3">
                  <h4 class="title">2</h4>
                  <span>Sản phẩm trong giỏ</span>
                </div>
              </figure>
              <figure class="card bg-light">
                <div class="p-3">
                  <h4 class="title">5</h4>
                  <span>Đơn hàng</span>
                </div>
              </figure>
              <figure class="card bg-light">
                <div class="p-3">
                  <h4 class="title">5</h4>
                  <span>Sản phẩm đang giao</span>
                </div>
              </figure>
              <figure class="card bg-light">
                <div class="p-3">
                  <h4 class="title">10</h4>
                  <span>Sản phẩm đã nhận</span>
                </div>
              </figure>
            </article> <!-- row .//  -->
          </div> <!-- card-body.// -->
        </article>
      </main> <!-- col.// -->

    </div> <!-- row.// -->
  </div> <!-- container.// -->
</section> <!-- section-content.// -->

<footer class="section-footer">
  <section class="footer-top py-5 bg-light">
    <div class="container">
      <div class="row">
        <aside class="col-sm-6 col-lg-3">
          <h6 class="pb-2">Giới thiệu</h6>
          <ul class="list-unstyled">
            <li><a href="#">Về Shop</a></li>
            <li><a href="#">Tuyển dụng</a></li>
            <li><a href="#">Chính sách thanh toán</a></li>
            <li><a href="#">Chính sách bảo mật</a></li>
            <li><a href="#">Giải quyết khiếu nại</a></li>
            <li><a href="#">Hợp tác</a></li>
          </ul>
        </aside>
        <aside class="col-sm-6 col-lg-3">
          <h6 class="pb-2">Hỗ trợ khách hàng</h6>
          <ul class="list-unstyled">
            <li>Hotline: 1900-80xx</li>
            <li><a href="#">Câu hỏi thường gặp</a></li>
            <li><a href="#">Hướng dẫn đặt hàng</a></li>
            <li><a href="#">Phương thức vận chuyển</a></li>
            <li><a href="#">Chính sách đổi trả</a></li>
          </ul>
        </aside>
        <aside class="col-lg-5">
          <h6 class="pb-2">Đăng ký nhận tin</h6>
          <form action="#">
            <div class="input-group w-100">
              <input type="text" class="form-control" placeholder="Email của bạn ...">
              <button class="btn btn-primary" type="button">
                Đăng ký
              </button>
            </div>
          </form>
        </aside>
      </div> <!-- row.// -->
    </div> <!-- container.// -->
  </section> <!-- footer-top.// -->

  <section class="footer-bottom text-center bg-light border-top py-3">
    <div class="container-fluid">© 2021 — Shop Bán Sách</div> <!-- container-fluid.// -->
  </section> <!-- footer-bottom.// -->
</footer> <!-- section-footer.// -->

<%--<jsp:include page="_footer.jsp"/>--%>
</body>

</html>