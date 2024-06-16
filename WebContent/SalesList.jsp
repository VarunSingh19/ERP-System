<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.model.Sales"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <!-- Google Charts -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    
    <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            // Column chart data
            var columnData = google.visualization.arrayToDataTable([
                ['Salesperson Name', 'Target', 'Number of Units', 'Number of Units Sold'],
                <% 
                List<Sales> salesList = (List<Sales>) request.getAttribute("salesList");
                if (salesList != null) {
                    for (Sales item : salesList) {
                %>
                ['<%= item.getSalespersonName() %>', <%= item.getTarget() %>, <%= item.getNumberOfUnits() %>, <%= item.getNumberOfUnitsSold() %>],
                <% 
                    }
                } 
                %>
            ]);

            var columnOptions = {
                title: 'Sales Data',
                hAxis: {title: 'Salesperson Name', titleTextStyle: {color: '#333'}},
                vAxis: {minValue: 0},
                chartArea: {width: '50%', height: '70%'},
                isStacked: true,
                width: '100%',
                height: '100%'
            };

            var columnChart = new google.visualization.ColumnChart(document.getElementById('sales_chart'));
            columnChart.draw(columnData, columnOptions);

            // Pie chart data
            var pieData = google.visualization.arrayToDataTable([
                ['Salesperson Name', 'Number of Units Sold'],
                <% 
                if (salesList != null) {
                    for (Sales item : salesList) {
                %>
                ['<%= item.getSalespersonName() %>', <%= item.getNumberOfUnitsSold() %>],
                <% 
                    }
                } 
                %>
            ]);

            var pieOptions = {
                title: 'Sales Data',
                pieHole: 0.4,
                width: '100%',
                height: '100%'
            };

            var pieChart = new google.visualization.PieChart(document.getElementById('sales_pie_chart'));
            pieChart.draw(pieData, pieOptions);
        }
    
        $(document).ready(function() {
            $("#visualize_btn").click(function() {
                $("#chart_containers").toggleClass("hidden");
                if (!$("#chart_containers").hasClass("hidden")) {
                    // Load and draw Google Charts when the button is clicked
                    drawChart();
                }
            });

            $(window).resize(function(){
                if (!$("#chart_containers").hasClass("hidden")) {
                    drawChart();
                }
            });
        });
    </script>
    
    <style>
        .hidden {
            display: none;
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
    <div class="container mt-5">
        <h2 class="text-center">Sales List</h2>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>Sales ID</th>
                        <th>Salesperson Name</th>
                        <th>Target</th>
                        <th>Number of Units</th>
                        <th>Number of Units Sold</th>
                        <th>Completion Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                <%
// Initialize a counter variable
int counter = 1;

if (salesList != null) {
    for (Sales item : salesList) {
%>
    <tr>
        <!-- Replace Sales ID with the counter variable -->
        <td><%= counter %></td>
        <td><%= item.getSalespersonName() %></td>
        <td><%= item.getTarget() %></td>
        <td><%= item.getNumberOfUnits() %></td>
        <td><%= item.getNumberOfUnitsSold() %></td>
        <td><%= item.getCompletionStatus() %></td>
        <td>
            <form action="UpdateSalesServlet" method="get" style="display:inline;">
                <input type="hidden" name="salesId" value="<%= item.getSalesId() %>">
                <button type="submit" class="btn btn-warning p-2"><i class="fas fa-edit"></i></button>
            </form>
            <form action="DeleteSalesServlet" method="post" style="display:inline;">
                <input type="hidden" name="salesId" value="<%= item.getSalesId() %>">
                <button type="submit" class="btn btn-danger p-2"><i class="fas fa-trash"></i></button>
            </form>
        </td>
    </tr>
<%
        // Increment the counter variable
        counter++;
    }
} else {
%>
    <tr>
        <td colspan="7" class="text-center">No sales data available</td>
    </tr>
<%
}
%>

                </tbody>
            </table>
            <center>
            <a href="addSalesData.jsp" class="btn btn-outline-primary">Add Sales</a>
        </center>
        </div>
        <!-- Add Google Chart here -->
 <div class="container mt-5">
        <button id="visualize_btn" class="btn btn-primary">Help me visualize</button>
    </div>

    <div class="container mt-5 hidden" id="chart_containers">
        <div class="text-center">
            <h2>Sales Graph Chart</h2>
            <div class="embed-responsive embed-responsive-16by9">
                <div id="sales_chart" class="embed-responsive-item"></div>
            </div>
        </div>

        <div class="text-center mt-5">
            <h2>Sales Pie Chart</h2>
            <div class="embed-responsive embed-responsive-16by9">
                <div id="sales_pie_chart" class="embed-responsive-item"></div>
            </div>
        </div>
    </div>


        
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
