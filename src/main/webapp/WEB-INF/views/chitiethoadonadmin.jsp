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

${chitiethoadon.tenkhachhang }



<c:forEach items="${chitiethoadon.getDanhsachchitiethoadon()}"
				var="chitietsanpham">
				<tr>
					<td class="mau" data-mamau="${chitietsanpham.getSoluong()}"></td>
					<%-- <td class="size" data-masize="${chitietsanpham.getSizesanpham().getMasize()}">${chitietsanpham.getSizesanpham().getSize()}</td>
					<td class="soluong" >${chitietsanpham.soluong}</td>
					
					<td><button data-machitiet="${chitietsanpham.getMachitietsanpham()}" class="btn-giohang">Gio Hang</button></td> --%>
				</tr>
			</c:forEach>

</body>
</html>