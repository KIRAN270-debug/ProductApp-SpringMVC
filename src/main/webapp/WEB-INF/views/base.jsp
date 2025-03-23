<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        /* Import a custom font */
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap');
        
        /* Header Styles */
        header {
            background: #283593;
            color: #fff;
            padding: 20px;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
        }

        header h1 {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            font-size: 2.5em;
            letter-spacing: 2px;
            text-align: left;
            display: inline-block;
        }

        header nav {
            display: inline-block;
            float: right;
        }

        header nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            align-items: center;
        }

        header nav ul li {
            margin: 0 10px;
            position: relative;
        }

        header nav ul li a {
            color: #c5cae9;
            text-decoration: none;
            font-size: 1.2em;
            padding: 5px 10px;
            transition: background 0.3s, color 0.3s;
        }

        header nav ul li a:hover {
            background: #ff8a65;
            color: #fff;
            border-radius: 5px;
        }

        /* Dropdown Menu */
        #menu {
            position: relative;
            cursor: pointer;
        }

        #menu-icon {
            font-size: 1.2em;
            cursor: pointer;
        }

        #dropdown {
            display: none;
            position: absolute;
            background: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 5px 0;
            border-radius: 5px;
            top: 40px;
            right: 0;
            z-index: 1000;
            min-width: 150px;
        }

        #dropdown a {
            display: block;
            color: #283593; /* Blue for the links */
            padding: 5px 10px;
            text-decoration: none;
            font-size: 1em;
            border-radius: 5px;
            text-align: left;
        }

        #dropdown a:hover {
            background: #ff8a65;
            color: #fff;
        }

        /* Show menu on hover or click */
        #menu.active #dropdown {
            display: block;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            header h1 {
                font-size: 2em;
                text-align: center;
                width: 100%;
            }

            header nav ul {
                flex-direction: column;
                align-items: flex-end;
            }

            header nav ul li {
                margin: 10px 0;
            }
        }
    </style>
    <script>
        // Toggle menu dropdown visibility on click
        document.addEventListener("DOMContentLoaded", function () {
            const menu = document.getElementById("menu");
            const menuIcon = document.getElementById("menu-icon");

            menuIcon.addEventListener("click", function (e) {
                menu.classList.toggle("active");
                e.stopPropagation();
            });

            // Close the dropdown if the user clicks anywhere else on the page
            document.addEventListener("click", function (e) {
                if (!menu.contains(e.target)) {
                    menu.classList.remove("active");
                }
            });
        });
    </script>
</head>
<body>
    <header>
        <h1>ProductApp</h1>
        <nav>
            <ul>
                <li><a href="${pageContext.request.contextPath}/">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
                <li><a href="${pageContext.request.contextPath}/about">About</a></li>
                <li id="menu">
                    <span id="menu-icon">&#9776; Menu</span>
                    <div id="dropdown">
                        <a href="${pageContext.request.contextPath}/addproduct">Add New Product</a>
                        <a href="${pageContext.request.contextPath}/enterid">Find A Product</a>
                        <a href="${pageContext.request.contextPath}/displayallproduct">Show All Product</a>
                        <a href="${pageContext.request.contextPath}/updatebyid">Update Product Details</a>
                        <a href="${pageContext.request.contextPath}/deleteproductbyid">Delete Product</a>
                    </div>
                </li>
            </ul>
        </nav>
    </header>
</body>
</html>
