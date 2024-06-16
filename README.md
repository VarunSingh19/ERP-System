# ERP System

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white)
![JSP](https://img.shields.io/badge/JSP-00599C?style=for-the-badge&logo=java&logoColor=white)
![HTML](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Apache Tomcat](https://img.shields.io/badge/Tomcat-F8DC75?style=for-the-badge&logo=apache-tomcat&logoColor=black)

## Table of Contents
- [Project Overview](#project-overview)
- [Technologies Used](#technologies-used)
- [Installation and Setup](#installation-and-setup)
- [Features](#features)
- [Architecture](#architecture)
- [Database Schema](#database-schema)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Project Overview
The ERP (Enterprise Resource Planning) system is designed to streamline and manage core business processes through a single integrated system. This project covers various modules like inventory management, sales, HR, and more. It is built using a combination of JSP, Core Java, HTML, CSS, JavaScript, and Bootstrap, following the MVC model and DAO approach. The backend is powered by MySQL and the application runs on Apache Tomcat server.

## Technologies Used
- **Frontend:**
  - HTML5, CSS3, Bootstrap
  - JavaScript, Chart.js for graphical reports and validations
- **Backend:**
  - Core Java
  - JSP (JavaServer Pages)
- **Database:**
  - MySQL
- **Server:**
  - Apache Tomcat
- **Architecture:**
  - MVC (Model-View-Controller)
  - DAO (Data Access Object)

## Installation and Setup
1. **Prerequisites:**
   - JDK (Java Development Kit)
   - Eclipse IDE
   - Apache Tomcat
   - MySQL Database

2. **Steps:**
   - Clone the repository:
     ```bash
     git clone https://github.com/VarunSingh19/ERP-System
     ```
   - Open the project in Eclipse IDE.
   - Configure Apache Tomcat server in Eclipse.
   - Set up the MySQL database using the provided schema.
   - Update the database connection details in the project.
   - Run the project on Apache Tomcat server.

## Features
- **User Management:**
  - Admin and user roles
  - Authentication and authorization

- **Inventory Management:**
  - Track inventory levels
  - Manage suppliers and products

- **Sales Module:**
  - Order processing
  - Sales reports with graphical charts

- **HR Module:**
  - Employee management
  - Attendance tracking

- **Reports:**
  - Interactive charts using Chart.js
  - Comprehensive reports for different modules

## Architecture
The project follows the MVC architecture to separate concerns:
- **Model:** Represents the data and business logic.
- **View:** Represents the UI components.
- **Controller:** Handles user input and updates the model and view accordingly.

The DAO approach is used to abstract and encapsulate all access to the data source.

## Database Schema
The database schema includes tables for:
- Sales
- Users
- Roles
- Inventory
- Products
- Suppliers
- Orders
- Employees
- Attendance

Detailed schema and ER diagram can be found in the `db` folder of the repository.

## Usage
1. **Login:**
   - Access the login page and enter your credentials.

2. **Dashboard:**
   - View the summary of different modules.

3. **Manage Sales:**
   - Add, update, or delete products and suppliers.

4. **Process Orders:**
   - Manage customer orders and view sales reports.

5. **HR Management:**
   - Add and manage employee details and track attendance.

6. **Reports:**
   - Generate and view graphical reports for different modules.

## Contributing
Contributions are welcome! Please fork the repository and create a pull request with your changes. Make sure to follow the coding standards and include relevant tests.

## License
This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Contact
For any questions or feedback, please contact:
- **Name:** Varun Singh
- **Email:** varunsingh18@icloud.com
- **GitHub:** https://github.com/VarunSingh19
