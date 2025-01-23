package com.TODO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/edit")


public class Edit extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        String taskName = req.getParameter("task");
        String status = req.getParameter("status");

        String user = "root";
        String password = "98765";
        String url = "jdbc:mysql://localhost:3306/TODO";

        try {
            Connection con = DriverManager.getConnection(url, user, password); 
            String query = "UPDATE todo_task SET task=?, status=? WHERE task=?";
            PreparedStatement pstm = con.prepareStatement(query);

            pstm.setString(1, taskName);
            pstm.setString(2, status);
            pstm.setString(3, taskName);

            int rowAffected = pstm.executeUpdate();

            if (rowAffected > 0) {
                res.sendRedirect("Index.jsp");  
            } else {
                res.sendRedirect("edit.jsp");  
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
  
    }
}

