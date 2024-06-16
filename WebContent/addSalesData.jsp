<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="Home.jsp">ERP System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item ">
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


    <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form method="post" action="AddSalesDataServlet">
<!--                 <div class="form-group">
                    <label for="salespersonID">Salesperson ID</label>
                    <input type="text" class="form-control" id="salesId" name="salesId">
                    </div>
 -->                
 						<div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" id="name" name="salespersonName">
                </div>
                <div class="form-group">
                    <label for="name">Target</label>
                    <input type="text" class="form-control" id="name" name="target">
                </div>
                <div class="form-group">
                    <label for="totalSales">Number Of Units</label>
                    <input type="text" class="form-control" id="totalSales" name="numberOfUnits">
                </div>
                <div class="form-group">
                    <label for="salesTarget">Number Of Units Sold</label>
                    <input type="text" class="form-control" id="salesTarget" name="numberOfUnitsSold">
                </div>
                <div class="form-group">
                    <label for="achievement">Completion Status</label>
                    <input type="text" class="form-control" id="completionStatus" name="completionStatus">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-outline-primary" name="insert">Insert</button>
                    <!-- <button type="submit" class="btn btn-secondary" name="update">Update</button> -->
                    <button type="submit" class="btn btn-outline-success" name="show">Show</button>
                </div>
                <div class="form-group">
                    <!-- <button type="submit" class="btn btn-danger" name="delete">Delete</button> -->
                    
                </div>
            </form>
        </div>
    </div>
</div>



    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
