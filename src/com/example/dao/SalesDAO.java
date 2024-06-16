package com.example.dao;

import com.example.model.Sales;
import db.GetConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SalesDAO {
    public boolean insertSales(Sales sales) {
        try (Connection connection = GetConnection.getConnection()) {
            String createTableSQL = "CREATE TABLE IF NOT EXISTS sales (salesId INT PRIMARY KEY AUTO_INCREMENT, " +
                                    "salespersonName VARCHAR(60), target INT, numberOfUnits INT, numberOfUnitsSold INT, " +
                                    "completionStatus VARCHAR(20));";
            connection.createStatement().execute(createTableSQL);

            String insertSQL = "INSERT INTO sales (salespersonName, target, numberOfUnits, numberOfUnitsSold, completionStatus) " +
                               "VALUES (?, ?, ?, ?, ?);";
            PreparedStatement preparedStatement = connection.prepareStatement(insertSQL);
            preparedStatement.setString(1, sales.getSalespersonName());
            preparedStatement.setInt(2, sales.getTarget());
            preparedStatement.setInt(3, sales.getNumberOfUnits());
            preparedStatement.setInt(4, sales.getNumberOfUnitsSold());
            preparedStatement.setString(5, sales.getCompletionStatus());
            preparedStatement.executeUpdate();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean updateSales(Sales sales) {
        try (Connection connection = GetConnection.getConnection()) {
            String updateSQL = "UPDATE sales SET salespersonName = ?, target = ?, numberOfUnits = ?, numberOfUnitsSold = ?, " +
                               "completionStatus = ? WHERE salesId = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(updateSQL);
            preparedStatement.setString(1, sales.getSalespersonName());
            preparedStatement.setInt(2, sales.getTarget());
            preparedStatement.setInt(3, sales.getNumberOfUnits());
            preparedStatement.setInt(4, sales.getNumberOfUnitsSold());
            preparedStatement.setString(5, sales.getCompletionStatus());
            preparedStatement.setInt(6, sales.getSalesId());
            preparedStatement.executeUpdate();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean deleteSales(int salesId) {
        try (Connection connection = GetConnection.getConnection()) {
            String deleteSQL = "DELETE FROM sales WHERE salesId = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(deleteSQL);
            preparedStatement.setInt(1, salesId);
            preparedStatement.executeUpdate();

            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Sales> showSales() {
        List<Sales> salesList = new ArrayList<>();
        try (Connection connection = GetConnection.getConnection()) {
            String selectSQL = "SELECT * FROM sales;";
            ResultSet resultSet = connection.createStatement().executeQuery(selectSQL);

            while (resultSet.next()) {
                Sales sales = new Sales();
                sales.setSalesId(resultSet.getInt("salesId"));
                sales.setSalespersonName(resultSet.getString("salespersonName"));
                sales.setTarget(resultSet.getInt("target"));
                sales.setNumberOfUnits(resultSet.getInt("numberOfUnits"));
                sales.setNumberOfUnitsSold(resultSet.getInt("numberOfUnitsSold"));
                sales.setCompletionStatus(resultSet.getString("completionStatus"));
                salesList.add(sales);
            }

            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return salesList;
    }
    
    public Sales getSalesById(int salesId) {
        Sales sales = null;
        try (Connection connection = GetConnection.getConnection()) {
            String selectSQL = "SELECT * FROM sales WHERE salesId = ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(selectSQL);
            preparedStatement.setInt(1, salesId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                sales = new Sales();
                sales.setSalesId(resultSet.getInt("salesId"));
                sales.setSalespersonName(resultSet.getString("salespersonName"));
                sales.setTarget(resultSet.getInt("target"));
                sales.setNumberOfUnits(resultSet.getInt("numberOfUnits"));
                sales.setNumberOfUnitsSold(resultSet.getInt("numberOfUnitsSold"));
                sales.setCompletionStatus(resultSet.getString("completionStatus"));
            }
            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sales;
    }
}
