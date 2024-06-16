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
import java.util.List;

@WebServlet("/AddSalesDataServlet")
public class AddSalesDataServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SalesDAO salesDAO;

    public void init() {
        salesDAO = new SalesDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String salesIdStr = request.getParameter("salesId");
        int salesId = 0;
        if (salesIdStr != null && !salesIdStr.isEmpty()) {
            salesId = Integer.parseInt(salesIdStr);
        }

        String salespersonName = request.getParameter("salespersonName");

        String targetStr = request.getParameter("target");
        int target = 0;
        if (targetStr != null && !targetStr.isEmpty()) {
            target = Integer.parseInt(targetStr);
        }

        String numberOfUnitsStr = request.getParameter("numberOfUnits");
        int numberOfUnits = 0;
        if (numberOfUnitsStr != null && !numberOfUnitsStr.isEmpty()) {
            numberOfUnits = Integer.parseInt(numberOfUnitsStr);
        }

        String numberOfUnitsSoldStr = request.getParameter("numberOfUnitsSold");
        int numberOfUnitsSold = 0;
        if (numberOfUnitsSoldStr != null && !numberOfUnitsSoldStr.isEmpty()) {
            numberOfUnitsSold = Integer.parseInt(numberOfUnitsSoldStr);
        }

        String completionStatus = request.getParameter("completionStatus");

        String insert = request.getParameter("insert");
        String update = request.getParameter("update");
        String delete = request.getParameter("delete");
        String show = request.getParameter("show");
        String view = request.getParameter("view");

        Sales sales = new Sales(salesId, salespersonName, target, numberOfUnits, numberOfUnitsSold, completionStatus);

        if (insert != null) {
            salesDAO.insertSales(sales);
            RequestDispatcher dispatcher = request.getRequestDispatcher("insertsuccess.jsp");
            dispatcher.forward(request, response);
        } else if (update != null) {
            salesDAO.updateSales(sales);
            RequestDispatcher dispatcher = request.getRequestDispatcher("updatesuccess.jsp");
            dispatcher.forward(request, response);
        } else if (delete != null) {
            salesDAO.deleteSales(salesId);
            RequestDispatcher dispatcher = request.getRequestDispatcher("addSalesData.jsp");
            dispatcher.forward(request, response);
        }

        if (show != null) {
            List<Sales> salesList = salesDAO.showSales();
            request.setAttribute("salesList", salesList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("SalesList.jsp");
            dispatcher.forward(request, response);
        }

        if (view != null) {
            List<Sales> salesList = salesDAO.showSales();
            request.setAttribute("salesList", salesList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("salesCards.jsp");
            dispatcher.forward(request, response);
        }
    }
}
