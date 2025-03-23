<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }

        .card {
            background: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            margin: 15px;
            max-width: 300px;
            width: 100%;
            text-align: center;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }

        .card img {
            width: 100%;
            height: auto;
        }

        .card-content {
            padding: 15px;
        }

        .card-content h2 {
            font-size: 1.5em;
            margin: 10px 0;
            color: #283593;
        }

        .card-content p {
            margin: 10px 0;
            color: #555;
            font-size: 1em;
        }

        .card-content span {
            display: block;
            margin: 10px 0;
            font-weight: bold;
            color: #ff5722;
        }
    </style>
</head>
<body>
    <div class="container">
        <c:forEach var="product" items="${product}">
            <div class="card">
              
                <div class="card-content">
                    <h2>${product.name}</h2>
                    <p>${product.description}</p>
                    <span>Price:  &#8377;${product.price}</span>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>
