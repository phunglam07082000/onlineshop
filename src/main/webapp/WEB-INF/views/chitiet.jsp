<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>



<%--  <ul>
 <li id="giohang"><a>
    <c:if test="${slgiohang > 0}">
    <div class="cicrle"><span>${slgiohang}</span></div>
    </c:if>
    
    <c:if test="${slgiohang<=0 || slgiohang==nul }">
    <div ><span>${slgiohang}</span></div>
    </c:if>
    
    
    </a></li>
</ul>
   


	<span id="tensp" data-masp="${chitietsp.masanpham }">${chitietsp.tensanpham }</span>
	<span id="giatien" data-value="${chitietsp.giatien }">${chitietsp.giatien } VND</span>
	<span>${chitietsp.mota }</span>
	<img alt=""
		src='<c:url value="/resources/Image/${chitietsp.hinhsanpham }"/>'>

	<table>
		<tbody>

			<c:forEach items="${chitietsp.getChitietsanpham()}"
				var="chitietsanpham">
				<tr>
					<td class="mau" data-mamau="${chitietsanpham.getMausanpham().getMamau()}">${chitietsanpham.getMausanpham().getTenmau()}</td>
					<td class="size" data-masize="${chitietsanpham.getSizesanpham().getMasize()}">${chitietsanpham.getSizesanpham().getSize()}</td>
					<td class="soluong" >${chitietsanpham.soluong}</td>
					
					<td><button data-machitiet="${chitietsanpham.getMachitietsanpham()}" class="btn-giohang">Gio Hang</button></td>
				</tr>
			</c:forEach>



		</tbody>
	</table>


	<ul>

		<c:forEach items="${danhmuc }" var="listdanhmuc">
			<li><a>${listdanhmuc.tendanhmuc }</a></li>
		</c:forEach>


	</ul>  --%>
	
	
	
	  <header>
        <a href="#" class="logo"><img alt="" src='../resources/Image/logo.png'></a>
        <nav class="navbar__menu">
          <ul>
             <c:forEach items="${danhmuc}" var="danhmuc">

			<li><a href="../sanpham/${danhmuc.madanhmuc}/${danhmuc.tendanhmuc }">${danhmuc.tendanhmuc }</a></li>
		  </c:forEach>
          </ul>
        </nav>
  
        <nav class="navbar__icon">
          <ul>
           
            
             <li> <a href="/OnlineShop/giohang/">
             <i class="icon fas fa-shopping-cart"></i>
             </a> 	
              </li>
            
            
                  <li id="giohang"><a>
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
        <div class="product__details">

            <img src='<c:url value="/resources/Image/${chitietsp.hinhsanpham }"/>'  alt="">
    
            <div class="product__detail">
    
    
                <span  id="tensp" data-masp="${chitietsp.masanpham }" class="product__name">${chitietsp.tensanpham }</span> 
                <span  class="product__id" >Mã số: ${chitietsp.masanpham }</span>
                <span  id="giatien" data-value="${chitietsp.giatien }" class="product__price">${chitietsp.giatien } VND</span>
    
                <table>
    
    
                    <tbody>
                                  <c:forEach items="${chitietsp.getChitietsanpham()}"
				var="chitietsanpham">
                        <tr>
                 
                            <td  class="mau" data-mamau="${chitietsanpham.getMausanpham().getMamau()}">${chitietsanpham.getMausanpham().getTenmau()}</td>
                            <td class="size" data-masize="${chitietsanpham.getSizesanpham().getMasize()}">${chitietsanpham.getSizesanpham().getSize()}</td>
                            <td class="soluong" >${chitietsanpham.soluong}</td>
                            <td><button   data-machitiet="${chitietsanpham.getMachitietsanpham()}" class="btn-giohang cart__btn " >mua</button></td>
                        </tr>
                        
                     </c:forEach>
    
                    </tbody>
    
    
    
                </table>
    
            </div>
    
            <div class="product_des">
               <span>Mô tả sản phẩm</span>
                <p>
                   ${chitietsp.mota }
                </p>
            </div>
          </div> 
        
    

      </section>

      <div class="lable">
        Top sản phẩm Mới
  
        <p>Những sản phẩm thời trang mới nhất/Hot nhất</p>
      </div>
  
      <section id="cart">
      <div class="carts">
        
         <c:forEach   items="${listsp }" var="sanpham">
     
      
       <div class="cart">
       
       <a href="chitiet/${sanpham.masanpham }" >
        <img src='<c:url value="/resources/Image/${sanpham.hinhsanpham }"/>' class="cart__imgage" alt="" />
       </a>
         

          <div class="cart__content">
         
            <h4 class="cart__title">${sanpham.tensanpham }</h4>
            <div class="cart__info">
              <div class="cart__price">${sanpham.giatien }</div>
              <a href="chitiet/${sanpham.masanpham }">
                <span class="cart__btn">Mua</span>
              </a>
              
            </div>
          </div>
        </div>
      
       
      
      
      </c:forEach>
        
        
        
      </div>
    </section>




      <section class="gallery" id="gallery">

       

        <div class="box-container">

            <div class="box2" >
                <img src='../resources/Image/slider3.jpg' alt="">
                <h3>delicious food</h3>
            </div>
            <div class="box2" >
                <img src='../resources/Image/slider3.jpg' alt="">
                <h3>delicious food</h3>
            </div>
            <div class="box2" >
                <img src='../resources/Image/slider3.jpg' alt="">
                <h3>delicious food</h3>
            </div>
            <div class="box2" >
                <img src='../resources/Image/slider3.jpg' alt="">
                <h3>delicious food</h3>
            </div>
            <div class="box2" >
                <img src='../resources/Image/slider3.jpg' alt="">
                <h3>delicious food</h3>
            </div>
            <div class="box2" >
                <img src='../resources/Image/slider3.jpg' alt="">
                <h3>delicious food</h3>
            </div>
        </div>


    </section>

      <div class="footer">

        <div class="footer__logo" >
          <img  src='./resources/Image/logo.png' alt="">
 
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
		$(document).ready(function() {
			$(".btn-giohang").click(function() {
				
			var machitiet=$(this).attr("data-machitiet");
			alert(machitiet)
			var tenmau=	$(this).closest("tr").find(".mau").text();
			var mamau=$(this).closest("tr").find(".mau").attr("data-mamau");
			var tensize=$(this).closest("tr").find(".size").text();
			var masize=$(this).closest("tr").find(".size").attr("data-masize");
			var soluong=$(this).closest("tr").find(".soluong").text();
			var tensp=$("#tensp").text();
			var masp=$("#tensp").attr("data-masp")
			var giatien=$("#giatien").attr("data-value");
			
	

				 $.ajax({
					url : "/OnlineShop/api/ThemGioHang",
					type : "GET",
					data : {
						masp : masp,
						mamau : mamau,
						masize:masize,
						tensp:tensp,
						giatien:giatien,
						tenmau:tenmau,
						tensize:tensize,
						soluong:soluong,
						machitiet:machitiet,

					},
					success : function(value) {
						$("#giohang").find("div").addClass("cart-notice")
						$("#giohang").find("div").html("<span>"+value+"</span>");
						
					}

				})/* .done(function(){
					 $.ajax({
							url : "/OnlineShop/api/LaySoLuongGioHang",
							type : "GET",
							
							success : function(value) {
								
							}

						})
					
					
				})  */
			});

		});
	</script>

	<jsp:include page="footer.jsp" />
</body>
</html>