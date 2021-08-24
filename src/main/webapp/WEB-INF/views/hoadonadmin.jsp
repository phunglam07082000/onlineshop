<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Receipt</title>
<jsp:include page="header_admin.jsp"></jsp:include>
</head>
<body>


<input type="checkbox"  id="sidebar-toggle">
    <div class="sidebar">
        <div class="slidebar-header">
            <h3 class="brand">
                <!-- <span class="ti-unlink"></span> -->
                <span>easywire</span>
            </h3>

            <label for="sidebar-toggle" class="ti-menu-alt"></label>
        </div>
        <div class="sidebar-menu">
            <ul>
                <li>
                    <a href="">
                        <span class="ti-home"></span>
                        <span>Home</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="ti-face-smile"></span>
                        <span>Team</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="ti-agenda"></span>
                        <span>Tasks</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="ti-clipboard"></span>
                        <span>Leaves</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="ti-folder"></span>
                        <span>Projects</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="ti-time"></span>
                        <span>Timesheet</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="ti-book"></span>
                        <span>Contacts</span>
                    </a>
                </li>
                <li>
                    <a href="">
                        <span class="ti-settings"></span>
                        <span>Account</span>
                    </a>
                </li>
            </ul>

        </div>

    </div>

    <div class="main-content"> 
        <header>
            <div class="search-wrapper">
                <span class="ti-search"></span>
                <input type="search" placeholder="Search">
            </div>
            <div class="social-icons">
                <span class="ti-bell"></span>
                <span class="ti-comment"></span>
                <div class="">
                </div>
            </div>
        </header>

         <div class="dash-content">
            <button  class="dash__btn--delete">Delete</button>
            <table  id="table-hoadon">
                <thead>
                    <tr>
                        <td>
    
                            <div class="checkbox">
    
                                <label><input id="check-all" type="checkbox" value="" /></label>
                            </div>
                        </td>
                        <td>Mã Hóa Đơn</td>
                        <td>Tên Khách Hàng</td>
                        <td>Số Điện Thoại</td>
                         <td>Địa chỉ Giao Hàng</td>
                        <td>Tình Trạng</td>
                        <td>Ngày Lập</td>
                        <td>Hình Thức Giao Hàng </td>
                        <td>Ghi chú</td>
                    </tr>
    
                </thead>
    
                <tbody>
                
                
                  <c:forEach items="${listHoaDon }"  var="hoadon">
                
                   <tr>
                        <td>
    
                            <div class="checkbox">
    
                                <label><input id="check-all" type="checkbox" value="" /></label>
                            </div>
                        </td>
                        <td><a  href="adminchitiethoadon/${hoadon.mahoadon}">${hoadon.mahoadon }</a></td>
                        <td>${hoadon.tenkhachhang }</td>
                        <td>${hoadon.sodt }</td>
                        <td>${hoadon.diachigiaohang}</td>
                        <td> 
                         <select  class="select"  id="tinhtrang" name="tinhtrang">
                            <c:choose>
                            
                            <c:when test="${hoadon.tinhtrang==true }">
                            
                              <option value="1">Đã Giao</option>
                            
                            </c:when>
                           <c:otherwise>
                           
                            <option value="0">Chưa Giao</option>
                            <option value="1">Đã Giao</option>
                           
                            
                           </c:otherwise>
                            
                            
                            
                            </c:choose>
                            
                             
                           
                           
                            
                          </select>
                          
                          </td>
                        <td>${hoadon.ngaylap }</td>
                        <td>${hoadon.hinhthucgiaohang}</td>
                        <td>${hoadon.ghichu}</td>
                        <td> <button class="capnhathoadon dash__btn--update" data-id="${hoadon.mahoadon}" >Update</button>  </td>
                    </tr>
                    
                
                </c:forEach>
                 
    
                </tbody>
    
               
               
                
            </table>
            
            
            
    
         </div>

        

        <div class="pagination">
          <c:forEach var="i" begin="1" end="${tongsopage }">

				<c:choose>
					<c:when test="${i==1 }">

						<a  class="active page-item" href="#">${i}</a>
					</c:when>

					<c:otherwise>

						<a class="page-item" href="#">${i}</a>
					</c:otherwise>
				</c:choose>

			</c:forEach>
          
        </div>
        
        
       
  
       
    </div>
<script type="text/javascript">
		$(document).ready(function() {  
			
			
			
			
							
							var masanpham=0;
							
							$("body").on("click",".page-item",
											function() {
												$(".page-item").removeClass(
														"active");

												$(this).addClass("active");
												var sotrang = $(this).text();
												var hdbatdau = (sotrang - 1) * 5;

												$
														.ajax({
															url : "/OnlineShop/api/layhoadonlimit",
															type : "GET",
															data : {
																hdbatdau : hdbatdau,

															},
															success : function(value) {

																var tbodyhoadon = $(
																		"#table-hoadon")
																		.find(
																				"tbody")
																		.empty();
																tbodyhoadon
																		.empty();
																tbodyhoadon
																		.append(value);
															}

														});

											});	
							
							
							$("body").on("click",".capnhathoadon" ,function(){
								
								mahoadon=$(this).attr("data-id");
								var tinhtrang = $("#tinhtrang").val();
								alert("Hello! I am an alert box!!" +mahoadon+tinhtrang);
								
								 $.ajax({
										url : "/OnlineShop/api/capnhathoadon",
										type : "POST",
										data : {
											mahoadon : mahoadon,
											tinhtrang : tinhtrang

										},
										
										
										success : function(value) {

										}

									});  
								
							});

						});
	</script>



<jsp:include page="footer.jsp"/>
</body>
</html>