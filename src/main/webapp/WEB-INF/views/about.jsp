<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="base.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>About Us - ProductApp</title>
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
            font-size: 2.5em;
            margin-bottom: 15px;
        }

        .content p {
            font-size: 1.2em;
            line-height: 1.8;
            color: #333;
            margin-bottom: 20px;
            text-align: justify;
        }

        .timeline {
            margin-top: 20px;
            font-size: 1.1em;
            color: #333;
        }

        .timeline h3 {
            color: #3949ab;
            margin-bottom: 10px;
        }

        .timeline ul {
            list-style: none;
            padding: 0;
        }

        .timeline ul li {
            margin: 15px 0;
            position: relative;
            padding-left: 20px;
        }

        .timeline ul li::before {
            content: "⦿";
            position: absolute;
            left: 0;
            color: #3949ab;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            .content {
                margin: 20px;
                padding: 15px;
            }

            .content h2 {
                font-size: 2em;
            }

            .content p, .timeline ul li {
                font-size: 1em;
            }
        }

        @media (max-width: 480px) {
            .content h2 {
                font-size: 1.5em;
            }

            .content p, .timeline ul li {
                font-size: 0.9em;
            }
        }
    </style>
</head>
<body>
    <!-- Main Content -->
    <div class="content">
        <h2>About ProductApp</h2>
        <p>
            Established in the year 2015, ProductApp has grown from a small startup into a global leader in technology solutions. With a vision to revolutionize product management and inventory systems, ProductApp has consistently pushed the boundaries of innovation, setting benchmarks for the industry.
        </p>
        <p>
            Over the centuries, ProductApp has played a vital role in transforming businesses of all sizes. Our cutting-edge tools and user-centric approach have made us the trusted choice for millions of users worldwide. Headquartered in TechCity, USA, we operate in over 100 countries, delivering top-notch services and solutions.
        </p>

        <div class="timeline">
            <h3>Our Journey</h3>
            <ul>
                <li><strong>2015:</strong> ProductApp was founded by visionary entrepreneurs with a mission to simplify product management.</li>
                <li><strong>2016:</strong> Expanded operations across Europe and Asia, becoming a pioneer in early trade and commerce technologies.</li>
                <li><strong>2017:</strong> Introduced the first automated product inventory system.</li>
                <li><strong>2019:</strong> Revolutionized logistics and supply chain management during the industrial era.</li>
                <li><strong>2021:</strong> Launched our first web-based application, bringing product management to the digital age.</li>
                <li><strong>2023:</strong> Introduced AI-powered features, further solidifying our position as an industry leader.</li>
            </ul>
        </div>

        <p>
            Today, ProductApp continues to innovate and lead, delivering solutions that empower businesses and individuals alike. Join us as we shape the future of product management, one breakthrough at a time.
        </p>
    </div>
</body>
</html>
