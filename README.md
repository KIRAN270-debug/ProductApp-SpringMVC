# ProductApp - Spring MVC Project

## Overview

ProductApp is a web-based product management application built using Spring MVC, Hibernate, and MySQL. It allows users to add, update, delete, and view products through a user-friendly interface.

## Features

- Add new products with details such as name, price, and description.
- Display all products.
- Search for a product by ID.
- Update product details.
- Delete a product.

## Technologies Used

- **Spring MVC** for web framework.
- **Hibernate (JPA)** for ORM (Object-Relational Mapping).
- **MySQL** for database storage.
- **JSP** for frontend views.
- **Maven** for project dependency management.

## Project Structure

```
productapp
├── src/main/java/productappController
├── src/main/java/productappDao
├── src/main/java/productappDto
├── src/main/java/productappService
├── src/main/webapp/WEB-INF/views
├── src/main/resources/application.properties
├── pom.xml
└── README.md
```

## Installation & Setup

### Prerequisites

- Java 8 or later
- Apache Maven
- MySQL Database
- Tomcat Server

### Steps to Run the Project

1. Clone the repository or download the source code.
2. Configure the MySQL database and update `application.properties`.
3. Build the project using Maven:
   ```sh
   mvn clean install
   ```
4. Deploy the WAR file to Tomcat or run the project from your IDE.

### Database Configuration

Update `application.properties` with your MySQL database credentials:

```
spring.datasource.url=jdbc:mysql://localhost:3306/productdb
spring.datasource.username=root
spring.datasource.password=root
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

## API Endpoints

| Endpoint                | Method | Description                              |
| ----------------------- | ------ | ---------------------------------------- |
| `/`                     | GET    | Home page - Display all products         |
| `/addproduct`           | GET    | Show add product form                    |
| `/addproducthandle`     | POST   | Handle new product submission            |
| `/displayallproduct`    | GET    | View all products                        |
| `/enterid`              | GET    | Show form to enter product ID            |
| `/enterid`              | POST   | View product by ID                       |
| `/updatebyid`           | GET    | Show form to enter product ID for update |
| `/updateproductenterid` | POST   | Get product details for update           |
| `/updateproduct`        | POST   | Update product details                   |
| `/removebyid/{id}`      | GET    | Delete a product by ID                   |

## Dependencies

```xml
<dependencies>
    <dependency>
        <groupId>junit</groupId>
        <artifactId>junit</artifactId>
        <version>4.13.1</version>
        <scope>test</scope>
    </dependency>
    <dependency>
        <groupId>mysql</groupId>
        <artifactId>mysql-connector-java</artifactId>
        <version>8.0.28</version>
    </dependency>
    <dependency>
        <groupId>org.hibernate</groupId>
        <artifactId>hibernate-core</artifactId>
        <version>5.6.10.Final</version>
    </dependency>
    <dependency>
        <groupId>org.springframework</groupId>
        <artifactId>spring-webmvc</artifactId>
        <version>5.3.18</version>
    </dependency>
    <dependency>
        <groupId>javax.servlet</groupId>
        <artifactId>javax.servlet-api</artifactId>
        <version>3.1.0</version>
        <scope>provided</scope>
    </dependency>
</dependencies>
```
