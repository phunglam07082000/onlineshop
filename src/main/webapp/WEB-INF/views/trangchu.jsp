 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<jsp:include page="header.jsp"></jsp:include>
</head>
<body>



<%-- <c:forEach items="${danhmuc}" var="danhmuc">

<li><a href="sanpham/${danhmuc.madanhmuc}/${danhmuc.tendanhmuc }">${danhmuc.tendanhmuc }</a></li>
</c:forEach>
 --%>



<%-- <c:choose>

<c:when test="${chucaidau !=null }">
<a href="#" style="padding:10px; width: 50px; height: 50px;background-color: brown; border-radius: 50%;text-align: center;"> ${chucaidau } </a>
</c:when>
<c:otherwise>
<a href="login/">DANG NHAP</a>
</c:otherwise>
</c:choose>



<c:forEach items="${listsp }" var="sanpham">

<a href="chitiet/${sanpham.masanpham }">

<span>${sanpham.tensanpham }</span>
<span>${sanpham.giatien }</span>
<span>${sanpham.mota }</span>
<br/>

<img alt="" src='<c:url value="/resources/Image/${sanpham.hinhsanpham }"/>'>

</a>


<br/>


</c:forEach> --%>

 <header>


 

      <a href="" class="logo"><img alt="" src='./resources/Image/logo.png'></a>
      <nav class="navbar__menu">
        <ul>
         
          
          
          <c:forEach items="${danhmuc}" var="danhmuc">

			<li><a href="sanpham/${danhmuc.madanhmuc}/${danhmuc.tendanhmuc }">${danhmuc.tendanhmuc }</a></li>
		  </c:forEach>
         
           
        </ul>
      </nav>

      <nav class="navbar__icon">
        <ul>
          <li>
          <c:choose>
            <c:when test="${chucaidau !=null }">
				<a href="#" style="padding:10px; width: 60px; height: 50px;color:#fff ;font-size:1.4rem;background-color:#ee4266; border-radius: 50%;text-align: center;"> ${chucaidau } </a>
				
				
				</c:when>
				
				<c:otherwise>
				
				<a href="login/"><i class="icon far fa-user"></i></a>
          
          
          </c:otherwise>
				
		  </c:choose>
		  		  
          </li>
          <li>
          
          <c:choose>
          
          <c:when test="${chucaidau !=null }">
          <a href="SignOut"><i class="icon fas fa-sign-out-alt"></i></a>
          
          </c:when>
          
          <c:otherwise>
           <a href="login/"><i class="icon fas fa-search"></i></a>
          
          </c:otherwise>
          
          
          </c:choose>
            
          </li>
          
          
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
    
    
    
      <div id="slideshow">
        <div>
           <img  src='./resources/Image/slider1.jpg' alt="">
          
        </div>
        <div>
           <img  src='./resources/Image/slider6.jpg' alt="">
         
        </div>
        <div>
          <img  src='./resources/Image/slider3.jpg' alt="">
         
        </div>
      </div>
    </section>

    <div class="lable">
      Top sản phẩm HOT

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




<%--  <c:if test='${ten == "phung viet alm"}'>
   kjsdms
 </c:if>
 
 <c:set var="hoten" value="${ten}" />
 <c:out value="${hoten}"></c:out>
 <c:remove var="hoten"/>
 
 <c:catch var="exception">
 <% int x=5/0; %>
 
 </c:catch>
 
 <c:if test="${exception !=null}">
         ${exception.message}
 </c:if>
 

 
 <c:forEach items="${list }" var="x">
   <c:out value="${x.getDiaChi() }"/><br/>
 </c:forEach>
 
 <c:forTokens items="lam,phung,viet" delims="," var="chuoi">
 <c:out value="${chuoi }"></c:out>
 </c:forTokens> --%>
<jsp:include page="footer.jsp"/>

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



</body>
</html>