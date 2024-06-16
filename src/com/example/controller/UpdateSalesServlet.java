package com.example.controller;


import com.example.dao.SalesDAO;
import com.example.model.Sales;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpdateSalesServlet")
public class UpdateSalesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SalesDAO salesDAO;

    public void init() {
        salesDAO = new SalesDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int salesId = Integer.parseInt(request.getParameter("salesId"));
        Sales sales = salesDAO.getSalesById(salesId);
        request.setAttribute("sales", sales);
        RequestDispatcher dispatcher = request.getRequestDispatcher("updateSalesData.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
