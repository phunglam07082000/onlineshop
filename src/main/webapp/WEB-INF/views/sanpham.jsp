<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="header.jsp"></jsp:include>
<title>YAMY</title>
</head>
<body>

	
	

<header>
      <a href="" class="logo"><img alt="" src='./resources/Image/logo.png'></a>
     
      <nav class="navbar__menu">
        <ul>
          
          
          
          <c:forEach items="${danhmuc}" var="danhmuc">

			<li><a href="${danhmuc.tendanhmuc }">${danhmuc.tendanhmuc }</a></li>
		  </c:forEach>
           
           
        </ul>
      </nav>

      <nav class="navbar__icon">
        <ul>
          
            <li>
            <a href="/OnlineShop/giohang/"><i class="icon fas fa-shopping-cart"></i></a>
           
          </li>
                
         
            
                  <li id="giohang"><a>
				    <c:if test="${slgiohang > 0}">
				    <div class="cart-notice">
				    <span>${slgiohang}</span>
				    
				    </div>
				    </c:if>
				    
				      <c:if test="${slgiohang<=0 || slgiohang==nul }">
				    <div><span>${slgiohang}</span></div>
				    </c:if>			    
				    </a>
				    
		      </li>
        </ul>
      </nav>
    </header>

    <section>
    
    
    
     
    </section>

    <div class="lable">
      Top sản phẩm HOT

      <p>Những sản phẩm thời trang mới nhất/Hot nhất</p>
    </div>

    <section id="cart">
      <div class="carts">
      
      
      <c:forEach   items="${spdanhmuc}" var="sanpham">
     
      
       <div class="cart">
       
       <a href='<c:url value="../../chitiet/${sanpham.masanpham }"/>'>
        <img src='<c:url value="/resources/Image/${sanpham.hinhsanpham }"/>' class="cart__imgage" alt="" />
       </a>
         

          <div class="cart__content">
         
            <h4 class="cart__title">${sanpham.tensanpham }</h4>
            <div class="cart__info">
              <div class="cart__price">${sanpham.giatien }</div>
              <a href='<c:url value="../../chitiet/${sanpham.masanpham }"/>'>
                <span class="cart__btn">Mua</span>
              </a>
              
            </div>
          </div>
        </div>
      
       
      
      
      </c:forEach>
      
        
        

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

    <div class="footer">

       <div class="footer__logo" >
       <img  src='./resources/Image/logo.png' alt="">
       <!--  <img  src='../resources/Image/logo.png' alt=""> -->

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

	//INDEX IMAGES SLIDER
	$("#slideshow > div:gt(0)").hide();

	  setInterval(function () {
	    $("#slideshow > div:first")
	      .fadeOut(1000)
	      .next()
	      .fadeIn(1000)
	      .end()
	      .appendTo("#slideshow");
	  }, 5000);

	});

</script>



	<jsp:include page="footer.jsp" />
</body>
</html>