package com.example.controller;


import com.example.dao.SalesDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteSalesServlet")
public class DeleteSalesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SalesDAO salesDAO;

    public void init() {
        salesDAO = new SalesDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int salesId = Integer.parseInt(request.getParameter("salesId"));
        salesDAO.deleteSales(salesId);
        response.sendRedirect("SalesList.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
