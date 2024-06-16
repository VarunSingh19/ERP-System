<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.example.model.Sales"%>

<%
    Sales sales = (Sales) request.getAttribute("sales");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Sales Data</title>
    <!-- Bootstrap CSS (latest version) -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap-theme.min.css">
    <!-- Font Awesome for icons (optional) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
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
                    <a class="nav-link" href="Home.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="addSalesData.jsp">Sales</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addSalesData.jsp">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addSalesData.jsp">Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="addSalesData.jsp">Inventory</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="container mt-5">
        <h2 class="text-center mb-4">Update Sales Data</h2>
        <form action="AddSalesDataServlet" method="post">
            <input type="hidden" name="salesId" value="<%= sales.getSalesId() %>">
            <div class="mb-3">
                <label for="salespersonName" class="form-label">Salesperson Name:</label>
                <input type="text" class="form-control" id="salespersonName" name="salespersonName" value="<%= sales.getSalespersonName() %>" required>
            </div>
            <div class="mb-3">
                <label for="target" class="form-label">Target:</label>
                <input type="number" class="form-control" id="target" name="target" value="<%= sales.getTarget() %>" required>
            </div>
            <div class="mb-3">
                <label for="numberOfUnits" class="form-label">Number of Units:</label>
                <input type="number" class="form-control" id="numberOfUnits" name="numberOfUnits" value="<%= sales.getNumberOfUnits() %>" required>
            </div>
            <div class="mb-3">
                <label for="numberOfUnitsSold" class="form-label">Number of Units Sold:</label>
                <input type="number" class="form-control" id="numberOfUnitsSold" name="numberOfUnitsSold" value="<%= sales.getNumberOfUnitsSold() %>" required>
            </div>
            <div class="mb-3">
                <label for="completionStatus" class="form-label">Completion Status:</label>
                <input type="text" class="form-control" id="completionStatus" name="completionStatus" value="<%= sales.getCompletionStatus() %>" required>
            </div>
            <button type="submit" class="btn btn-primary" name="update"><i class="fas fa-save"></i> Update</button>
        </form>
        <a href="SalesList.jsp" class="btn btn-secondary mt-3"><i class="fas fa-home"></i> Back to Home</a>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"></script>
</body>
</html>
