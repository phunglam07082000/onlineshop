<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>

	<%-- <span class="active" id="dangnhap1">dang nhap</span>/
	<span class="active" id="dangki1">dang ki</span>


	<div id="container-login">
		<input type="text" placeholder="ten dang nhap" id="tendangnhap"
			name="tendangnhap" /> 
			<input type="password" placeholder="pass"
			id="matkhau" name="matkhau" /> 
			<span id="dangnhap">dang nhap</span>
	</div>

	<div id="container-register">
		<form action="" method="post">
			<input type="text" placeholder="ten dang nhap" id="tendangnhap"
				name="tendangnhap" />
				
				 <input type="password" placeholder="pass"
				id="matkhau" name="matkhau" /> <input type="password"
				placeholder="nhap lại pas" id="nhaplaimatkhau" name="nhaplaimatkhau" />

			<input id="dangki" type="submit" value="dang ki" />


		</form>

	</div>
	<span id="ketqua"></span>
	<span>${ketqua }</span>
	<span>${ktdangnhap }</span>
	
	 --%>
	
	
	
	 <header>
        <a href="../" class="logo"><img alt="" src='../resources/Image/logo.png'></a>
        <nav class="navbar__menu">
          <ul>
           <c:forEach items="${danhmuc}" var="danhmuc">

			<li><a href="../sanpham/${danhmuc.madanhmuc}/${danhmuc.tendanhmuc }">${danhmuc.tendanhmuc }</a></li>
		     </c:forEach>
          </ul>
        </nav>
  
      </header>
      

  
      <section>

       
          <div  class="login__register">
          
          <span class="login__result"  id="ketqua"></span>
	      <span class="login__result" >${ketqua }</span>
	      <span class="login__result" >${ktdangnhap }</span>
          
          <span class="login__lable"   id="dangnhap1">Login</span>
          ======
          <span class="register__label" id="dangki1">Register</span>
          
          <div id="container-login" class="container__login"> 

            <input type="text" required="required" id="tendangnhap" name="tendangnhap" placeholder="Tên đăng nhập">
            <input type="password" required="required" id="matkhau" name="matkhau" placeholder="Mật khẩu">
            <input type="submit"  id="dangnhap" value="Đăng Nhập">

          </div>

          <div  id="container-register" class="container__register">
          
          <form action="" method="post">
          
          <input type="text" required="required" id="tendangnhap" name="tendangnhap" placeholder="Tên đăng nhập">
             <input type="password" required="required" id="matkhau" name="matkhau" placeholder="Mật khẩu">
             <input type="password" id="nhaplaimatkhau" name="nhaplaimatkhau" placeholder="Nhập mật khẩu">
             <input type="submit" value="Đăng Kí">
          </form>
          
          </div>
          
        </div>
        
      </section>
      <div class="footer">

        <div class="footer__logo" >
          <img  src="../resources/Image/logo.png" alt="">
        </div>
       <div class="box-container">
         <div class="box">
           <h3>Tp. HỒ CHÍ MINH</h3>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
         </div>
         <div class="box">
           <h3>TÂY NAM BÔ</h3>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
         </div>
         <div class="box">
           <h3>ĐÔNG NAM BÔ </h3>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
         </div>
         <div class="box">
           <h3>TÂY NGUYÊN</h3>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
           <p><i class="fas fa-map-marker-alt"></i> mumbai, indai 400104</p>
         </div>
       </div>
     </div>
  
  



	<script>
		$(document).ready(function() {
			$("#dangnhap").click(function() {

				var tendangnhap = $("#tendangnhap").val();
				var matkhau = $("#matkhau").val();
				$.ajax({
					url : "/OnlineShop/api/kiemTraDangNhap",
					type : "GET",
					data : {
						tendangnhap : tendangnhap,
						matkhau : matkhau

					},
					success : function(value) {
						if (value == "Admin") {
							duongDanHienTai = window.location.href;
							duongDan = duongDanHienTai.replace("login/", "admin");
							window.location = duongDan;

						}else if(value=="User") {
							
							duongDanHienTai = window.location.href;
							duongDan = duongDanHienTai.replace("login/", "");
							window.location = duongDan;
						
							
						}else{
							
							$("#ketqua").text("Đăng nhập thất bại");
						}
							
							
					

					}

				})
			});

			$("#dangnhap1").click(function() {
				$(this).addClass("active");
				$("#dangki1").removeClass("active");
				$("#container-login").show();
				$("#container-register").hide();
			});

			$("#dangki1").click(function() {
				$(this).addClass("active");
				$("#dangnhap1").removeClass("active");
				$("#container-login").hide();
				$("#container-register").show();

			});

		});
	</script>


	<!-- <h2>This is a heading</h2>

<p>This is a paragraph.</p>
<p>This is another paragraph.</p>

<button>Click me</button> -->
</body>
</html>