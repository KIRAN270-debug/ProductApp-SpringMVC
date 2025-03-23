<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./base.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>Update Product Details</title>
<style>
.form-container {
	max-width: 600px;
	margin: 50px auto;
	padding: 25px;
	background: rgba(255, 255, 255, 0.95);
	border-radius: 10px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
}

.form-container h2 {
	text-align: center;
	color: #3949ab;
	margin-bottom: 20px;
}

.form-container form {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.form-container input {
	padding: 10px;
	font-size: 1em;
	margin-bottom: 20px;
	width: 80%;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.form-container button {
	padding: 10px 20px;
	background-color: #3949ab;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.form-container button:hover {
	background-color: #303f9f;
}
</style>
</head>
<body>
	<div class="content">
		<div class="form-container">
			<h2>Update Product Details</h2>
			<form action="updateproduct" method="post">
				<input type="hidden" name="id" value="${product.id}" /> <label
					for="name">Product Name: </label> <input type="text" id="name"
					name="name" value="${product.name}" required /><br> <label
					for="price">Product Price: </label> <input type="text" id="price"
					name="price" value="${product.price}" required /><br> <label
					for="description">Product Description: </label> <input type="text"
					id="description" name="description" value="${product.description}"
					required /><br>

				<button type="submit">Update Product</button>
			</form>




		</div>
	</div>
</body>
</html>
