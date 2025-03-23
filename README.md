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
├── src/main/webapp/WEB-INF/spring-servlet.xml
├── src/main/resources/database.properties
├── src/main/webapp/WEB-INF/web.xml
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
2. Configure the MySQL database and update `database.properties`.
3. Build the project using Maven:
   ```sh
   mvn clean install
   ```
4. Deploy the WAR file to Tomcat or run the project from your IDE.

### Database Configuration

Update `database.properties` with your MySQL database credentials:

```
db.url=jdbc:mysql://localhost:3306/productdb
db.username=root
db.password=root
hibernate.dialect=org.hibernate.dialect.MySQL5Dialect
hibernate.show_sql=true
hibernate.hbm2ddl.auto=update
```

### JSP Pages and Their Paths

| JSP Page            | Path                     | Description |
|---------------------|-------------------------|-------------|
| `index.jsp`        | `/WEB-INF/views/index.jsp` | Home page displaying all products. |
| `addproduct.jsp`   | `/WEB-INF/views/addproduct.jsp` | Form to add a new product. |
| `display.jsp`      | `/WEB-INF/views/display.jsp` | Displays all available products. |
| `search.jsp`       | `/WEB-INF/views/search.jsp` | Form to search for a product by ID. |
| `update.jsp`       | `/WEB-INF/views/update.jsp` | Form to update product details. |
| `delete.jsp`       | `/WEB-INF/views/delete.jsp` | Confirms and processes product deletion. |

### Spring MVC Configuration

#### `web.xml`

```xml
<web-app xmlns="http://java.sun.com/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"
         version="3.0">
    <servlet>
        <servlet-name>spring</servlet-name>
        <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
        <init-param>
            <param-name>contextConfigLocation</param-name>
            <param-value>/WEB-INF/spring-servlet.xml</param-value>
        </init-param>
        <load-on-startup>1</load-on-startup>
    </servlet>

    <servlet-mapping>
        <servlet-name>spring</servlet-name>
        <url-pattern>/</url-pattern>
    </servlet-mapping>
</web-app>
```

#### `spring-servlet.xml`

```xml
<beans xmlns="http://www.springframework.org/schema/beans"
       xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
       xsi:schemaLocation="http://www.springframework.org/schema/beans 
       http://www.springframework.org/schema/beans/spring-beans.xsd">

    <bean id="viewResolver" class="org.springframework.web.servlet.view.InternalResourceViewResolver">
        <property name="prefix" value="/WEB-INF/views/" />
        <property name="suffix" value=".jsp" />
    </bean>

    <bean id="dataSource" class="org.apache.commons.dbcp2.BasicDataSource">
        <property name="driverClassName" value="com.mysql.cj.jdbc.Driver" />
        <property name="url" value="${db.url}" />
        <property name="username" value="${db.username}" />
        <property name="password" value="${db.password}" />
    </bean>

    <bean id="sessionFactory" class="org.springframework.orm.hibernate5.LocalSessionFactoryBean">
        <property name="dataSource" ref="dataSource" />
        <property name="hibernateProperties">
            <props>
                <prop key="hibernate.dialect">${hibernate.dialect}</prop>
                <prop key="hibernate.show_sql">${hibernate.show_sql}</prop>
                <prop key="hibernate.hbm2ddl.auto">${hibernate.hbm2ddl.auto}</prop>
            </props>
        </property>
    </bean>
</beans>
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

