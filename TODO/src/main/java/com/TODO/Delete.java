package com.TODO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Delete")
public class Delete extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        
        int id = Integer.parseInt(req.getParameter("id"));
        
        String user = "root";
        String password = "98765";
        String url = "jdbc:mysql://localhost:3306/TODO";

        try {
            
            Connection con = DriverManager.getConnection(url, user, password); 
            String query = "delete from todo_task WHERE id=?";
            PreparedStatement pstm = con.prepareStatement(query);

            
            pstm.setInt(1, id);

            int rowAffected = pstm.executeUpdate();

            if (rowAffected > 0) {
                res.sendRedirect("Index.jsp"); 
            } else {
                res.sendRedirect("Index.jsp"); 
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

	}


