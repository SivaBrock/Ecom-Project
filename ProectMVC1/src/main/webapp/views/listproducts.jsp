<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$.ajax({
			url : '/ProectMVC1/getjsonproducts',
			method : 'post',
			dataType : 'json',
			success : function(data) {
				$('#myDataTable').dataTable({
					data : data,
					columns : [ {
						'data' : 'pName'
					}, {
						'data' : 'pCost'
					}, ]
				});
			}
		});
	});
</script>

</head>
<body>

	<table id="myDataTable" class="table table-striped table-bordered"
		cellspacing="0" width="100%">
		<thead>
			<tr>
				<th>pName</th>
				<th>pCost</th>
			</tr>
		</thead>

		<c:forEach items="${lp}" var="products">
			<tr>
				<td>${products.getpName() }</td>
				<td>${products.getpCost() }</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>