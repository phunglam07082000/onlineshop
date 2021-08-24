<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>

<%-- 	<ul>
		<li id="giohang"><a> <c:if test="${slgiohang > 0}">
					<div class="cicrle">
						<span>${slgiohang}</span>
					</div>
				</c:if> <c:if test="${slgiohang<=0 || slgiohang==nul }">
					<div>
						<span>${slgiohang}</span>
					</div>
				</c:if>




		</a></li>
	</ul>


	<div class="container">
		<div class="col-md-12">
			<table class="table">

				<thead>
					<tr>
						<td>ten sp</td>
						<td>mau sp</td>
						<td>size</td>
						<td>soluon</td>
						<td>giatien</td>
					</tr>
				</thead>

				<tbody>

					<c:forEach items="${listgiohang}" var="giohang">


						<tr>

							<td class="tensp" data-masp="${giohang.masp }">${giohang.tensp }</td>
							<td class="mau" data-mau="${giohang.mamau }">${giohang.tenmau }</td>
							<td class="size" data-size="${giohang.masize}">${giohang.tensize }</td>
							<td><input class="soluong-giohang" min="1"
								data-value="${giohang.soluong }" type="number"
								value="${giohang.soluong }" /></td>

							<td class="giatien" data-value="${giohang.giatien }">${giohang.giatien }</td>
							<td class="xoa-giohang btn btn-danger">xoa</td>

						</tr>



					</c:forEach>

				</tbody>





			</table>

			<h4>
				Tong tien:<span id="tongtien"></span>
			</h4>


			<form action="" method="post">
				<input name="tenkhachhang" /> 
				<input name="sodt" /> <input
					name="diachigiaohang" /> 
					
					<input type="radio"
					name="hinhthucgiaohang" checked="checked" value="nha tai cua hang" />

				<input type="radio" name="hinhthucgiaohang"
					value="giao hang tan noi" /> 
					<input name="ghichu" />
					
					<input type="submit" value="giu"/>
			</form>




		</div>

	</div> --%>
	
	<header>
      <a href="../" class="logo"><img alt="" src='../resources/Image/logo.png'></a>
        <nav class="navbar__menu">
          <ul>
           
            
            
             <c:forEach items="${danhmuc}" var="danhmuc">

			<li><a href="../sanpham/${danhmuc.madanhmuc}/${danhmuc.tendanhmuc }">${danhmuc.tendanhmuc }</a></li>
		     </c:forEach>
            
            
           
          </ul>
        </nav>
  
        <nav class="navbar__icon">
          <ul>
         
            
          
            
            <li id="giohang">
             <a href="/OnlineShop/giohang/">
             <i class="icon fas fa-shopping-cart"></i>
             </a>
             
             <a>
				    <c:if test="${slgiohang > 0}">
				    <div class="cart-notice">
				    <span>${slgiohang}</span>
				    
				    </div>
				    </c:if>
				    
				      <c:if test="${slgiohang<=0 || slgiohang==nul }">
				    <div ><span>${slgiohang}</span></div>
				    </c:if>			    
				    </a> 	
            </li>
            
            
                  
          </ul>
        </nav>
      </header>
      
      

      <section>

        <div class="cart__item">

            <table>
                <thead>
                    <tr>
                        <td>Tên Sản Phẩm</td>
                        <td>Màu</td>
                        <td>Size</td>
                        <td>Sô lượng</td>
                        <td>Giá tiền</td>
                    </tr>

                </thead>

                <tbody>
                
                
                <c:forEach items="${listgiohang}" var="giohang">
                    <tr>
                        <td class="tensp" data-masp="${giohang.masp }">${giohang.tensp }</td>
                        <td class="mau" data-mau="${giohang.mamau }">${giohang.tenmau }</td>
                        <td class="size" data-size="${giohang.masize}">${giohang.tensize }</td>
                        <td><input class="soluong-giohang" min="1"
								data-value="${giohang.soluong }" type="number"
								value="${giohang.soluong }" /></td>
								
								
						<td class="giatien" data-value="${giohang.giatien }">${giohang.giatien }</td>
                        <td  ><button class="xoa-giohang btn btn-danger cart__btn ">Xóa</button>  </td>
                    </tr>
                    
                    </c:forEach>
                
                    
                   
                    

                </tbody>

               
               
                
            </table>
            <h4 class="total__price"  >
             Tổng tiền:
             <span class="total__price"  id="tongtien"> VND</span>
            
             </h4>

        </div>
      </section>


    
      <section class="order" id="order">
        <div class="rows">
            <form action="" method="post" >
                <input style="width: 100%" name="tenkhachhang"  type="text" placeholder="Tên khách hàng" class="box1">
                 <input style="width: 100%" name="sodt" type="number" placeholder="Số điện thoại" class="box1">
               
                <input style="width: 100%" name="diachigiaohang" type="text" placeholder="Địa chỉ giao hàng" class="box1">
                
                <input style="width: 10%" type="radio"
					name="hinhthucgiaohang"  value="Nhận tai cửa hàng" />
					<span class="product__id">Nhận tai cửa hàng</span>
                 
				<input  style="width: 10%"  type="radio" name="hinhthucgiaohang"
					value="giao hang tan noi" /> 
					<span class="product__id">Giao hàng tận nơi</span>
               
                <textarea name="ghichu" id="" cols="30" rows="10" class="box1 address" placeholder="Ghi chú"></textarea>
                <input  style="width: 10%" type="submit" value="Giửi" class="cart__btn">
            </form>

            <div class="images">
               <img alt="" src='../resources/Image/slider3.jpg'>
            </div>

        </div>

    </section>

    <section id="cart">
        <div class="carts">
          <div class="cart">
            <img src="assets/img/slider6.jpg" class="cart__imgage" alt="" />
  
            <div class="cart__content">
              <h4 class="cart__title">dfvdgb</h4>
              <div class="cart__info">
                <div class="cart__price">120000 VND</div>
  
                <span class="cart__btn">Mua</span>
              </div>
            </div>
          </div>
          <div class="cart">
            <img src="assets/img/slider6.jpg" class="cart__imgage" alt="" />
  
            <div class="cart__content">
              <h4 class="cart__title">dfvdgb</h4>
              <div class="cart__info">
                <div class="cart__price">120000 VND</div>
  
                <span class="cart__btn">Mua</span>
              </div>
            </div>
          </div>
          <div class="cart">
            <img src="assets/img/slider6.jpg" class="cart__imgage" alt="" />
  
            <div class="cart__content">
              <h4 class="cart__title">dfvdgb</h4>
  
              <div class="cart__info">
                <div class="cart__price">120000 VND</div>
  
                <span class="cart__btn">Mua</span>
              </div>
            </div>
          </div>
          <div class="cart">
            <img src="assets/img/slider6.jpg" class="cart__imgage" alt="" />
  
            <div class="cart__content">
              <h4 class="cart__title">dfvdgb</h4>
  
              <div class="cart__info">
                <div class="cart__price">120000 VND</div>
  
                <span class="cart__btn">Mua</span>
              </div>
            </div>
          </div>
        </div>
      </section>



      <div class="footer">

        <div class="footer__logo" >
         <img  src="assets/img/logo.png" alt="">
 
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
  
	
	
	

	<script type="text/javascript">
		$(document).ready(
				function() {
					
					
					$( "#x" ).prop( "checked", true );
					$( "#x" ).prop( "checked", false );

					GanTongTienGioHang();

					function GanTongTienGioHang(isEventChange) {
						var tongtiensp = 0;
						$(".giatien").each(
								function() {
									var giatien = $(this).text();
									var soluong = $(this).closest("tr").find(
											".soluong-giohang").val();

									var tongtien = parseInt(giatien) * soluong;

									var format = parseFloat(tongtien)
											.toFixed(3).replace(
													/(\d)(?=(\d{3})+\.)/g,
													"$1.").toString()

									if (!isEventChange) {
										$(this).html(format);

									}
									tongtiensp = tongtiensp + tongtien;

									var formatTongTien = tongtiensp.toFixed(3)
											.replace(/(\d)(?=(\d{3})+\.)/g,
													"$1.").toString()
									$('#tongtien').html(formatTongTien + "");
								})

					}

					$(".xoa-giohang").click(
							function() {
								var self = $(this)
								var masp = $(this).closest("tr").find(".tensp")
										.attr("data-masp")
								var mamau = $(this).closest("tr").find(".mau")
										.attr("data-mau");
								var masize = $(this).closest("tr")
										.find(".size").attr("data-size");

								$.ajax({
									url : "/OnlineShop/api/XoaGioHang",
									type : "GET",
									data : {
										masp : masp,
										mamau : mamau,
										masize : masize,

									},
									success : function(value) {
										self.closest("tr").remove();
										
										GanTongTienGioHang(true);
										
									}

								});
							})

					$(".soluong-giohang").change(
							function() {

								var soluong = $(this).val()
								var giatien = $(this).closest("tr").find(
										".giatien").attr("data-value");

								var tongtien = soluong * parseInt(giatien);
								var format = tongtien.toFixed(3).replace(
										/(\d)(?=(\d{3})+\.)/g, "$1.")
										.toString()

								$(this).closest("tr").find(".giatien").html(
										format);

								GanTongTienGioHang(true);

								var masp = $(this).closest("tr").find(".tensp")
										.attr("data-masp")
								var mamau = $(this).closest("tr").find(".mau")
										.attr("data-mau");
								var masize = $(this).closest("tr")
										.find(".size").attr("data-size");

								$.ajax({
									url : "/OnlineShop/api/CapNhatGioHang",
									type : "GET",
									data : {
										masp : masp,
										mamau : mamau,
										masize : masize,
										soluong : soluong,

									},
									success : function(value) {

									}

								});

							})

				});
	</script>




	<jsp:include page="footer.jsp" />
</body>
</html>