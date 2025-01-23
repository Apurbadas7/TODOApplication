package com.TODO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class AddTask extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String taskName = req.getParameter("task");
        String status = req.getParameter("status");
        
			TaskDao dao = null;
			try {
				dao = new TaskDao(DbConnection.getConnection());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
        boolean rowAffected=dao.adddao(taskName,status);
        if (rowAffected ) {
            res.sendRedirect("Index.jsp"); 
        } else {
        	
            res.sendRedirect("Addtask.jsp");
        }
        

    }
}
