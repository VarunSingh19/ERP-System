<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.List"%>
<%@ page import="com.example.model.Sales"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - ERP System</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            color: #333;
        }
        .navbar-brand {
            font-weight: bold;
        }
        .hero {
    background: url('https://i0.wp.com/www.agiletechnica.com/wp-content/uploads/2019/10/erp.png') no-repeat center center;
    background-size: cover;
    color: white;
    padding: 100px 0;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
    position: relative;
}

.hero::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: inherit;
    filter: blur(8px);
    z-index: 0;
    background-size: cover;
}

.hero .container {
    position: relative;
    z-index: 1;
}

        .hero h1 {
            font-size: 3.5rem;
            margin-bottom: 20px;
        }
        .hero p {
            font-size: 1.25rem;
        }
        .card-custom {
            transition: transform 0.2s;
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
        .features {
            padding: 60px 0;
            background-color: #fff;
        }
        .features .feature-item {
            text-align: center;
            padding: 20px;
        }
        .features .feature-item h5 {
            margin-top: 20px;
            font-size: 1.25rem;
        }
        .testimonials {
            padding: 60px 0;
            background-color: #f8f9fa;
        }
        .testimonials .testimonial-item {
            text-align: center;
            padding: 20px;
        }
        .testimonials .testimonial-item img {
            border-radius: 50%;
            margin-bottom: 20px;
        }
        .testimonials .testimonial-item p {
            font-size: 1rem;
        }
        .testimonials .testimonial-item h5 {
            margin-top: 10px;
            font-size: 1.25rem;
            color: #007bff;
        }
        .contact-form {
            padding: 60px 0;
            background-color: #fff;
        }
        .contact-form h2 {
            margin-bottom: 40px;
        }
        .footer {
            background-color: #343a40;
            color: white;
            padding: 20px 0;
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
                <li class="nav-item active">
                    <a class="nav-link" href="Home.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
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
    
    <div class="hero text-center">
        <div class="container">
            <h1>Welcome to the ERP System</h1>
            <p>Efficiently manage and track your data</p>
            <a href="#features" class="btn btn-primary btn-lg mt-4">Learn More</a>
        </div>
    </div>
    
    <div class="container mt-5">
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                <div class="card card-custom">
                    <img src="https://www.pngmart.com/files/23/Sales-Icon-PNG-File.png" class="card-img-top" alt="Sales" height="200">
                    <div class="card-body">
                        <h5 class="card-title">Sales</h5>
                        <p class="card-text">Track and manage sales data efficiently.</p>
                        <form method="post" action="AddSalesDataServlet">
                            <button type="view" class="btn btn-success btn-lg btn-block" name="view">View Sales</button>
                        </form>
                        </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                <div class="card card-custom">
                    <img src="https://images.pexels.com/photos/3823488/pexels-photo-3823488.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="card-img-top" alt="Customer" height="200">
                    <div class="card-body">
                        <h5 class="card-title">Customer</h5>
                        <p class="card-text">Manage customer data and interactions.</p>
                        <a href="addSalesData.jsp" class="btn btn-success btn-lg btn-block">View Customers</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                <div class="card card-custom">
                    <img src="https://images.pexels.com/photos/3912477/pexels-photo-3912477.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="card-img-top" alt="Product" height="200">
                    <div class="card-body">
                        <h5 class="card-title">Product</h5>
                        <p class="card-text">Keep track of your products and inventory.</p>
                        <a href="addSalesData.jsp" class="btn btn-success btn-lg btn-block">View Products</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 mb-4">
                <div class="card card-custom">
                    <img src="https://images.pexels.com/photos/4483610/pexels-photo-4483610.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="card-img-top" alt="Inventory" height="200">
                    <div class="card-body">
                        <h5 class="card-title">Inventory</h5>
                        <p class="card-text">Monitor and manage your inventory levels.</p>
                        <a href="addSalesData.jsp" class="btn btn-success btn-lg btn-block">View Inventory</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <section id="features" class="features">
        <div class="container text-center">
            <h2 class="mb-5">Features of Our ERP System</h2>
            <div class="row">
                <div class="col-lg-3 col-md-6 feature-item">
                    <i class="fas fa-chart-line fa-3x"></i>
                    <h5>Sales Analytics</h5>
                    <p>Get detailed insights into your sales performance.</p>
                </div>
                <div class="col-lg-3 col-md-6 feature-item">
                    <i class="fas fa-users fa-3x"></i>
                    <h5>Customer Management</h5>
                    <p>Manage your customer relationships effectively.</p>
                </div>
                <div class="col-lg-3 col-md-6 feature-item">
                    <i class="fas fa-boxes fa-3x"></i>
                    <h5>Inventory Control</h5>
                    <p>Keep track of your inventory in real-time.</p>
                </div>
                <div class="col-lg-3 col-md-6 feature-item">
                    <i class="fas fa-file-invoice-dollar fa-3x"></i>
                    <h5>Financial Management</h5>
                    <p>Manage your finances and accounting with ease.</p>
                </div>
            </div>
        </div>
    </section>

    <section id="testimonials" class="testimonials">
        <div class="container text-center">
            <h2 class="mb-5">What Our Clients Say</h2>
            <div class="row">
                <div class="col-lg-4 col-md-6 testimonial-item">
                    <img src="https://via.placeholder.com/150" alt="Client 1" class="img-fluid mb-3">
                    <p>"This ERP system has revolutionized our business operations. Highly recommend!"</p>
                    <h5>John Doe</h5>
                    <p>CEO, Example Corp</p>
                </div>
                <div class="col-lg-4 col-md-6 testimonial-item">
                    <img src="https://via.placeholder.com/150" alt="Client 2" class="img-fluid mb-3">
                    <p>"A fantastic tool that has helped us streamline our processes and improve efficiency."</p>
                    <h5>Jane Smith</h5>
                    <p>COO, Another Corp</p>
                </div>
                <div class="col-lg-4 col-md-6 testimonial-item">
                    <img src="https://via.placeholder.com/150" alt="Client 3" class="img-fluid mb-3">
                    <p>"The best investment we've made for our company's growth. Excellent support team!"</p>
                    <h5>Michael Johnson</h5>
                    <p>CFO, Yet Another Corp</p>
                </div>
            </div>
        </div>
    </section>

    <section id="contact" class="contact-form">
        <div class="container">
            <h2 class="text-center mb-5">Get in Touch</h2>
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <form>
                        <div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" id="name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" required>
                        </div>
                        <div class="form-group">
                            <label for="message">Message</label>
                            <textarea class="form-control" id="message" rows="5" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary btn-lg btn-block">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer text-center">
        <div class="container">
            <p class="mb-0">&copy; 2024 ERP System. All rights reserved.</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
