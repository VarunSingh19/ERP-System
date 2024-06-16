<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.model.Sales"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sales Management</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card-custom {
            transition: transform 0.2s;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card-custom:hover {
            transform: scale(1.05);
        }
        .card-title {
            font-size: 1.5rem;
            color: #007bff;
        }
        .card-text {
            color: #6c757d;
        }
        .btn-custom {
            margin: 10px 0;
        }
        .hero {
            background: url('https://source.unsplash.com/1600x900/?sales,success') no-repeat center center;
            background-size: cover;
            color: white;
            padding: 100px 0;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }
        .hero h1 {
            font-size: 3rem;
        }
        .hero p {
            font-size: 1.5rem;
        }
        .navbar-brand {
            font-size: 1.5rem;
            font-weight: bold;
        }
        .nav-link {
            font-size: 1.1rem;
        }
        .footer {
            background-color: #343a40;
            color: white;
            padding: 20px 0;
        }
        .footer p {
            margin: 0;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="Home.jsp">ERP System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addSalesData.jsp">Sales</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addCustomerData.jsp">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addProductData.jsp">Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addInventoryData.jsp">Inventory</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="hero text-center">
        <div class="container">
            <h1>Welcome to Sales Management</h1>
            <p>Manage your sales data effectively and efficiently</p>
        </div>
    </div>

    <div class="container mt-5">
        <h2 class="text-center mb-4">Sales Card Section</h2>
        <div class="row">
            <% 
                List<Sales> salesList = (List<Sales>) request.getAttribute("salesList");
                if (salesList != null) {
                    for (Sales item : salesList) {
            %>
            <div class="col-md-4">
                <div class="card mb-4 card-custom">
                    <img src="https://th.bing.com/th/id/OIP.F7AAZ51YNslUUrejRKkDeQHaE1?rs=1&pid=ImgDetMain" class="card-img-top" alt="Sales Image">
                    <div class="card-body">
                        <h5 class="card-title">Sales ID: <%=item.getSalesId()%></h5>
                        <p class="card-text"><strong>Salesperson Name:</strong> <%=item.getSalespersonName()%></p>
                        <p class="card-text"><strong>Target:</strong> <%=item.getTarget()%></p>
                        <p class="card-text"><strong>Number of Units:</strong> <%=item.getNumberOfUnits()%></p>
                        <p class="card-text"><strong>Number of Units Sold:</strong> <%=item.getNumberOfUnitsSold()%></p>
                        <p class="card-text"><strong>Completion Status:</strong> <%=item.getCompletionStatus()%></p>
                    </div>
                </div>
            </div>
            <% 
                    }
                } else {
            %>
            <div class="col-12">
                <div class="alert alert-warning text-center" role="alert">No sales data available</div>
            </div>
            <% 
                }
            %>
        </div>
    </div>

    <footer class="footer text-center">
        <div class="container">
            <p>&copy; 2024 ERP System. All rights reserved.</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
