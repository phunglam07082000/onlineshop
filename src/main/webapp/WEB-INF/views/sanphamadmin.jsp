<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header_admin.jsp"></jsp:include>

</head>
<body>


	<%-- <div class="container">

		<div>

			<button id="xoa" class="btn btn-primary">Xoa</button>
		</div>

		<table id="table-sanpham" class="table">
			<thead>
				<tr>
					<td>
						<div class="checkbox">

							<label><input id="check-all" type="checkbox" value="" /></label>
						</div>

					</td>
					<td>ten san pham</td>

					<td>gia tien</td>
				</tr>
			</thead>
			<tbody>

				<c:forEach items="${listSanPham }" var="listproduct">


					<tr>
						<td>
							<div class="checkbox">

								<label><input type="checkbox"
									value="${listproduct.masanpham }" /></label>
							</div>

						</td>

						<td>${listproduct.tensanpham}</td>
						<td>${listproduct.giatien}</td>
						<td class="capnhatsanpham btn btn-warning" data-id="${listproduct.masanpham}" >update</td>

					</tr>

				</c:forEach>


			</tbody>

		</table>


		<ul class="pagination">

			<c:forEach var="i" begin="1" end="${tongsopage }">

				<c:choose>
					<c:when test="${i==1 }">

						<li class="active page-item"><a href="#">${i}</a></li>
					</c:when>

					<c:otherwise>

						<li class="page-item"><a href="#">${i}</a></li>
					</c:otherwise>
				</c:choose>

			</c:forEach>
		</ul>





		<form id="from-data" action="">

			    <input type="text" placeholder="ten sp" id="tensanpham"
				name="tensanpham" /> 
				<input type="text" placeholder="gia tien sp"
				id="giatien" name="giatien" /> 
				<select id="danhmucsanpham" name="danhmucsanpham">
				<c:forEach var="danhmuc" items="${danhmuc }">
					<option value="${danhmuc.madanhmuc }">${danhmuc.tendanhmuc }</option>

				</c:forEach>

			</select>


			<textarea type="text" id="mota" name="mota" placeholder="nhap mo ta"
				rows="5" cols=""></textarea>

			<input type="file" placeholder="hinh anh" id="hinhsanpham"
				name="hinhsanpham" /> </br>

		





		<div id="containerchitietsanpham">

			<div class="chitietsanpham">
				<span> chi tiet</span>
				  <select id="mausanpham" name="mausanpham">
					<c:forEach var="listMau" items="${listMauSP }">
						<option value="${listMau.mamau }">${listMau.tenmau }</option>

					</c:forEach>

				</select> 
				
				<select id="sizesanpham" name="sizesanpham">
					<c:forEach var="listSize" items="${listSizeSP }">
						<option value="${listSize.masize }">${listSize.size }</option>

					</c:forEach>

				</select> 
				    <input min="1" type="number" name="soluong" id="soluong" placeholder="so luong" />
				
					<input type="text" name="ngaynhap" id="ngaynhap" placeholder="ngay nhap" />
					
					
				<button class="btn btn-primary btn-chitiet">them chi tiet</button>


			</div>
		</div>

</form> 

		<div id="chitietsanpham" class="chitietsanpham">
			<span> chi tiet</span> <select id="mausanpham" name="mausanpham">
				<c:forEach var="listMau" items="${listMauSP }">
					<option value="${listMau.mamau }">${listMau.tenmau }</option>

				</c:forEach>

			</select> <select id="sizesanpham" name="sizesanpham">
				<c:forEach var="listSize" items="${listSizeSP }">
					<option value="${listSize.masize }">${listSize.size }</option>

				</c:forEach>

			</select> 
			
			<input min="1" type="number" id="soluong" name="soluong" placeholder="so luong"  />
			<input type="text" name="ngaynhap" id="ngaynhap" placeholder="ngay nhap" />
			
			<button class="btn btn-primary btn-chitiet">them chi tiet</button>


		</div>


		<button id="btnThemSanPham" class="btn btn-primary">Them</button>
		<button id="btnCapNhatSanPham" class="btn btn-primary hiden">Cap Nhat</button>
		<button id="btnThoat" class="btn btn-primary hiden">Thoat</button>


	</div> --%>
	
	
	
	
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
            <button id="xoa"  class="dash__btn--delete">Delete</button>
            <table id="table-sanpham">
                <thead>
                    <tr>
                        <td>
    
                            <div class="checkbox">
    
                                <label><input id="check-all" type="checkbox" value="" /></label>
                            </div>
                        </td>
                        <td>Tên sản phẩm</td>
                        <td>Giá tiền</td>
                      
                    </tr>
    
                </thead>
    
                <tbody>
                
                <c:forEach items="${listSanPham }" var="listproduct">
                    <tr>
                        <td>
    
                            <div class="checkbox">
    
                                <label><input id="check-all" type="checkbox" value="${listproduct.masanpham }" /></label>
                            </div>
                        </td>
                        <td>${listproduct.tensanpham}</td>
                        <td>${listproduct.giatien}</td>
                      
                        <td><button  class="capnhatsanpham dash__btn--update" data-id="${listproduct.masanpham}">update</button> </td>
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
         
        <div class="product__adds">

            <div class="product__add">
            
              <form id="from-data" action="" >
              
                <input type="text"   id="tensanpham" name="tensanpham"  placeholder="Tên sản phẩm">
                <input type="text" id="giatien" name="giatien" placeholder="Giá tiền">
                
                
                <select id="danhmucsanpham" name="danhmucsanpham">
				<c:forEach var="danhmuc" items="${danhmuc }">
					<option value="${danhmuc.madanhmuc }">${danhmuc.tendanhmuc }</option>

				</c:forEach>

			    </select>

                

                  <textarea type="text" id="mota" name="mota" placeholder="Mô tả sản phẩm" ></textarea>
                  <input type="file"id="hinhsanpham" name="hinhsanpham"  placeholder="Hình sản phẩm">
            
    
             <div id="containerchitietsanpham" >
            
	            <div class="chitietsanpham">
	
	                <h3>Chi tiết</h3>
	               
	                 <select id="mausanpham" name="mausanpham">
						<c:forEach var="listMau" items="${listMauSP }">
							<option value="${listMau.mamau }">${listMau.tenmau }</option>
						</c:forEach>

				     </select> 
	
	                 <select id="sizesanpham" name="sizesanpham">
							<c:forEach var="listSize" items="${listSizeSP }">
								<option value="${listSize.masize }">${listSize.size }</option>
			
							</c:forEach>

			         </select> 
	
	                  <input min="1" type="number"  id="soluong" name="soluong" placeholder="Số lượng">
	                  <input type="text" name="ngaynhap" id="ngaynhap" placeholder="Ngày nhập">
	
	                  <button  class="dash__btn--update btn-chitiet"> Thêm chi tiết</button> 
	                 
	
	            </div>
           
            </div>
            </form>
            
              <div id="chitietsanpham" class="chitietsanpham">
	
	                <h3>Chi tiết</h3>
	               
	                 <select id="mausanpham" name="mausanpham">
						<c:forEach var="listMau" items="${listMauSP }">
							<option value="${listMau.mamau }">${listMau.tenmau }</option>
						</c:forEach>

				     </select> 
	
	                 <select id="sizesanpham" name="sizesanpham">
							<c:forEach var="listSize" items="${listSizeSP }">
								<option value="${listSize.masize }">${listSize.size }</option>
			
							</c:forEach>

			         </select> 
	
	                  <input min="1" type="number"  id="soluong" name="soluong" placeholder="Số lượng">
	                  <input type="text" name="ngaynhap" id="ngaynhap" placeholder="Ngày nhập">
	
	                  <button  class="dash__btn--update btn-chitiet"> Thêm chi tiết</button> 
	                 
	
	            </div>
            
            
              <div class="button">
		            <button id="btnThemSanPham"  class="dash__btn--update">Add</button> 
		            <button  id="btnCapNhatSanPham"  class="dash__btn--update  hiden">Update</button> 
		            <button id="btnThoat"  class="dash__btn--update hiden">Exit</button> 

              </div>  
         
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
												var spbatdau = (sotrang - 1) * 5;

												$
														.ajax({
															url : "/OnlineShop/api/laysanphamlimit",
															type : "GET",
															data : {
																spbatdau : spbatdau,

															},
															success : function(
																	value) {

																var tbodysanpham = $(
																		"#table-sanpham")
																		.find(
																				"tbody")
																		.empty();
																tbodysanpham
																		.empty();
																tbodysanpham
																		.append(value);
															}

														});

											})

							$("#check-all").change(function() {

								if (this.checked) {

									$("#table-sanpham input").each(function() {
										$(this).attr("checked", true);

									});

								} else {

									$("#table-sanpham input").each(function() {
										$(this).attr("checked", false);

									});

								}

							})

							$("#xoa").click(function() {
				                   $("#table-sanpham > tbody input:checked").each(function() {

												var masanpham = $(this).val();
																	var This = $(this);

																	$
																			.ajax({
																				url : "/OnlineShop/api/xoaSanPham",
																				type : "GET",
																				data : {
																					masanpham : masanpham,

																				},
																				success : function(
																						value) {

																					This
																							.closest(
																									"tr")
																							.remove();

																					alert("xoa thanh cong")
																				}

																			});

																});
											});

							var files = [];
							
							
							var tenhinh="";

							$("#hinhsanpham").change(function(event) {
								files = event.target.files;
								tenhinh=files[0].name;
								forms = new FormData();
								forms.append("file", files[0]);
								

								$.ajax({
									url : "/OnlineShop/api/UpLoadFile",
									type : "POST",
									data : forms,
									contentType : false,
									processData : false,
									enctype : "multipart/form-data",
									success : function(value) {

									}

								});

							});

							$("body").on(
									"click",
									".btn-chitiet",
									function(e) {
										$(this).remove();

										var chitietclone = $("#chitietsanpham")
												.clone().removeAttr("id");

										$("#containerchitietsanpham").append(
												chitietclone);
									})

							$("#btnThemSanPham").click(function(event) {
								event.preventDefault();	
								var formdata=$("#from-data").serializeArray();
								json={};
								arraychitiet=[];
								
								 $.each(formdata, function(i, field){								 			  
										  json[field.name]=field.value;
									   
									   
							    });
								 
								 
								 $("#containerchitietsanpham > .chitietsanpham").each(function(){
									 objcetChiTiet={};
									 mausanpham=$(this).find('select[name="mausanpham"]').val();
									 sizesanpham=$(this).find('select[name="sizesanpham"]').val();
									 soluong=$(this).find('input[name="soluong"]').val();
									 ngaynhap=$(this).find('input[name="ngaynhap"]').val();
									 
									 objcetChiTiet["mausanpham"]=mausanpham;
									 objcetChiTiet["sizesanpham"]=sizesanpham;
									 objcetChiTiet["soluong"]=soluong;
									 objcetChiTiet["ngaynhap"]=ngaynhap;
									 
									 arraychitiet.push(objcetChiTiet);
								 })
								 
								 json["chitietsanpham"]=arraychitiet;
								 json["hinhsanpham"]=tenhinh;
								 
								 console.log(json);
								 
								 
								 $.ajax({
										url : "/OnlineShop/api/themsanpham",
										type : "POST",
										data : {
											
											dataJson:JSON.stringify(json),
										},
										
										
										success : function(value) {
											
											alert("sdfgh")
										}

									});
							});
							$("#btnCapNhatSanPham").click(function(event){
								
								event.preventDefault();	
								var formdata=$("#from-data").serializeArray();
								json={};
								arraychitiet=[];
								
								 $.each(formdata, function(i, field){								 			  
										  json[field.name]=field.value;
									   
									   
							    });
								 
								 
								 $("#containerchitietsanpham > .chitietsanpham").each(function(){
									 objcetChiTiet={};
									 mausanpham=$(this).find('select[name="mausanpham"]').val();
									 sizesanpham=$(this).find('select[name="sizesanpham"]').val();
									 soluong=$(this).find('input[name="soluong"]').val();
									 ngaynhap=$(this).find('input[name="ngaynhap"]').val();
									 
									 objcetChiTiet["mausanpham"]=mausanpham;
									 objcetChiTiet["sizesanpham"]=sizesanpham;
									 objcetChiTiet["soluong"]=soluong;
									 objcetChiTiet["ngaynhap"]=ngaynhap;
									 
									 arraychitiet.push(objcetChiTiet);
								 })
								 json["masanpham"]=masanpham;
								 json["chitietsanpham"]=arraychitiet;
								 json["hinhsanpham"]=tenhinh;
								 
								 console.log(json);
								 
								  
								 $.ajax({
										url : "/OnlineShop/api/capnhatsanpham",
										type : "POST",
										data : {
											
											dataJson:JSON.stringify(json),
										},
										
										
										success : function(value) {

										}

									});  
								
							});
							
							
							
							$("body").on("click",".capnhatsanpham" ,function(){
								
								
								 $("#btnCapNhatSanPham").removeClass("hiden");
								 $("#btnThoat").removeClass("hiden");
								 $("#btnThemSanPham").addClass("hiden");
							
								  masanpham=$(this).attr("data-id");
								
								
								 $.ajax({
										url : "/OnlineShop/api/LayDanhSachSanPhamTheoMa",
										type : "POST",
										data : {
											
											masanpham: masanpham,
										},
										
										
										success : function(value) {
											
											$("#tensanpham").val(value.tensanpham);
											$("#giatien").val(value.giatien);
											$("#mota").val(value.mota);
											$("#danhmucsanpham").val(value.danhmucsanpham.madanhmuc);
											
											$("#containerchitietsanpham").empty();
											 var countchitiet=value.chitietsanpham.length;
											for(i=0;i<value.chitietsanpham.length;i++){
												var chitietclone = $("#chitietsanpham").clone().removeAttr("id");
												if(i<countchitiet-1){
													
													chitietclone.find(".btn-chitiet").remove();
												}
													
													chitietclone.find("#mausanpham").val(value.chitietsanpham[i].mausanpham.mamau)
													chitietclone.find("#sizesanpham").val(value.chitietsanpham[i].sizesanpham.masize)
													chitietclone.find("#ngaynhap").val(value.chitietsanpham[i].ngaynhap)
													chitietclone.find("#soluong").val(value.chitietsanpham[i].soluong)
													
											    $("#containerchitietsanpham").append(chitietclone);
													
												
											}
											
											
										}

									});
								
							});
							

						});
	</script>



	<jsp:include page="footer.jsp" />
</body>
</html>