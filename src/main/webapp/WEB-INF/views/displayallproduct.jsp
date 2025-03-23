<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./base.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>Show All Products</title>
<style>
.product-table-container {
	max-width: 1100px;
	margin: 20px auto;
	padding: 20px;
	background: rgba(255, 255, 255, 0.95);
	border-radius: 10px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
}

.product-table-container h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #3949ab;
}

table {
	width: 100%;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 15px;
	text-align: left;
}

th {
	background-color: #3949ab;
	color: white;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

/* Responsive Design */
@media ( max-width : 768px) {
	table, th, td {
		padding: 10px;
	}
	.product-table-container h2 {
		font-size: 1.8em;
	}
}

@media ( max-width : 480px) {
	table, th, td {
		padding: 8px;
	}
	.product-table-container h2 {
		font-size: 1.5em;
	}
}
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
	<div class="product-table-container">
		<h2>All Products</h2>
		<table>
			<thead>
				<tr>
					<th>id</th>
					<th>Product Name</th>
					<th>Price</th>
					<th>Description</th>
					<th>Action</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="abc" items="${product}">
					<tr>
						<td>PROD${abc.id}</td>
						<td>${abc.name}</td>
						<td>&#8377;${abc.price}</td>
						<td>${abc.description}</td>
						<td><a href="${pageContext.request.contextPath}/updateproduct/${abc.id}" title="Update"><i class="fas fa-edit"></i></a>

							&nbsp;
							 <a href="${pageContext.request.contextPath}/removebyid/${abc.id}"
							title="Delete" style="color: red;"> <i
								class="fas fa-trash-alt"></i>
						</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>