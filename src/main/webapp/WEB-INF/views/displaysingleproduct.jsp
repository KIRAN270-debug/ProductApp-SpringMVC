<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./base.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>Product Details</title>
    <style>
        .product-details {
            max-width: 700px;
            margin: 20px auto;
            padding: 25px;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }
        .product-details h3 {
            text-align: center;
            color: #3949ab;
            margin-bottom: 20px;
        }
        .product-details p {
            margin: 10px 0;
            font-size: 1.1em;
        }
        .error {
            color: red;
            text-align: center;
            margin-top: 20px;
            font-size: 1em;
        }
    </style>
</head>
<body>
    <div class="content">
        <!-- Display product details -->
        <div class="product-details">
            <h3>Product Details</h3>
            <p><strong>Product ID:</strong> ${product.id}</p> <!-- Display the ID -->
            <p><strong>Product Name:</strong> ${product.name}</p>
            <p><strong>Price:</strong> ${product.price}</p>
            <p><strong>Description:</strong> ${product.description}</p>
        </div>

        <!-- Display error message if product not found -->
        <div class="error">
            <p>${errorMessage}</p>
        </div>
    </div>
</body>
</html>
