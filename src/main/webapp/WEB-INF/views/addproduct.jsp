<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./base.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
    <style>
        .form-container {
            max-width: 700px; /* Increase max-width */
            margin: 20px auto;
            padding: 25px; /* Increase padding */
            background: rgba(255, 255, 255, 0.95);
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            overflow: hidden; /* Ensure child elements are contained */
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #3949ab;
        }

        .form-container label {
            display: block;
            margin: 10px 0 5px; /* Increase margin */
            font-weight: bold;
        }

        .form-container input, .form-container textarea, .form-container button {
            width: calc(100% - 20px); /* Adjust width */
            padding: 10px; /* Adjust padding */
            margin: 10px auto 15px; /* Adjust margin */
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em; /* Standard font size */
        }

        .form-container button {
            background: #3949ab;
            color: white;
            border: none;
            cursor: pointer;
            transition: background 0.3s;
        }

        .form-container button:hover {
            background: #283593;
        }

        .form-container .error {
            color: red;
            font-size: 0.9em;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
            }

            .form-container h2 {
                font-size: 1.5em;
            }

            .form-container input, .form-container textarea, .form-container button {
                font-size: 0.9em;
            }
        }

        @media (max-width: 480px) {
            .form-container {
                padding: 15px;
            }

            .form-container h2 {
                font-size: 1.2em;
            }

            .form-container input, .form-container textarea, .form-container button {
                font-size: 0.8em;
            }
        }
    </style>
</head>
<body>
<p>${message}</p>
    <div class="content">
        <div class="form-container">
            <h2>Add Product</h2>
            <form action="addproducthandle" method="post">
    <label for="name">Product Name</label>
    <input type="text" id="name" name="name" required>

    <label for="price">Price</label>
    <input type="number" id="price" name="price" required>

    <label for="description">Description</label>
    <textarea id="description" name="description" rows="4" required></textarea>

    <button type="submit">Add Product</button>
</form>

        </div>
    </div>
</body>
</html>
