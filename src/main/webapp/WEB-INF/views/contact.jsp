<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us - ProductApp</title>
    <style>
        /* Content Styles */
        .content {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .content h2 {
            text-align: center;
            color: #3949ab;
            font-size: 2em;
            margin-bottom: 15px;
        }

        .content p {
            font-size: 1.1em;
            line-height: 1.6;
            color: #333;
            margin-bottom: 20px;
        }

        .contact-details {
            margin-top: 20px;
        }

        .contact-details h3 {
            color: #3949ab;
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .contact-details p {
            margin: 5px 0;
            font-size: 1.1em;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .content {
                margin: 20px;
                padding: 15px;
            }

            .content h2 {
                font-size: 1.8em;
            }

            .content p, .contact-details p {
                font-size: 1em;
            }
        }

        @media (max-width: 480px) {
            .content h2 {
                font-size: 1.5em;
            }

            .content p, .contact-details p {
                font-size: 0.9em;
            }
        }
    </style>
</head>
<body>
    <!-- Main Content -->
    <div class="content">
        <h2>Contact Us</h2>
        <p>
            Welcome to ProductApp, your go-to solution for managing products effortlessly. Whether you're looking to add, update, view, or remove products, our application makes it seamless. For any inquiries, feedback, or assistance, feel free to reach out to us.
        </p>

        <div class="contact-details">
            <h3>Contact Information</h3>
            <p><strong>Email:</strong> support@productapp.com</p>
            <p><strong>Phone:</strong> +1-800-555-1234</p>
            <p><strong>Address:</strong> 123 ProductApp Lane, TechCity, TX 75001, USA</p>
        </div>

        <p>
            Follow us on social media to stay updated with the latest features and news about ProductApp!
        </p>

        <div class="contact-details">
            <h3>Follow Us</h3>
            <p><strong>Facebook:</strong> <a href="https://facebook.com/ProductApp" target="_blank">facebook.com/ProductApp</a></p>
            <p><strong>Twitter:</strong> <a href="https://twitter.com/ProductApp" target="_blank">@ProductApp</a></p>
            <p><strong>LinkedIn:</strong> <a href="https://linkedin.com/company/ProductApp" target="_blank">linkedin.com/company/ProductApp</a></p>
        </div>
    </div>
</body>
</html>
