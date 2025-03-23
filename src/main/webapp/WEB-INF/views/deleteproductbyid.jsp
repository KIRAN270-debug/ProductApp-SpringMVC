<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./base.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title>Delete Product by ID</title>
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
	color: #d32f2f;
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
	background-color: #d32f2f;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.form-container button:hover {
	background-color: #b71c1c;
}
</style>
</head>
<body>
	<div class="content">
		<div class="form-container">
			<h2>Delete Product by ID</h2>
			<form action="deleteproductbyid" method="post">
				<label for="id">Product ID: </label> <input type="text" id="id"
					name="id" required />
				<button type="submit">Delete Product</button>
			</form>
		</div>
	</div>
</body>
</html>
