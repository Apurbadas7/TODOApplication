package com.TODO;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TaskDao {
	

	private Connection conn;
	public TaskDao(Connection conn) {
		super();
		this.conn=conn;
	}
	
	public boolean adddao(String task,String status) {
		boolean f=false;
		try {
			String query="insert into todo_task(task,status) values(?,?)";
			
			PreparedStatement ps=conn.prepareStatement(query);
			ps.setString(1, task);
			ps.setString(2, status);
			
			int rowAffected=ps.executeUpdate();
			if(rowAffected==1) {
				
				f=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
				
			}
		return f;
		}
	
	public List<Task> getTask(){
	    List<Task> list = new ArrayList<Task>();
	    Task task = null;
	    try {
	        String query = "SELECT * FROM todo_task";
	        PreparedStatement ps = conn.prepareStatement(query);
	        ResultSet rs = ps.executeQuery();
	        
	        
	        while (rs.next()) {
	            task = new Task();
	            task.setId(rs.getInt(1));  
	            task.setTask(rs.getString(2));  
	            task.setStatus(rs.getString(3)); 
	            task.setCreatedAt(rs.getTimestamp(4));  
	            
	            list.add(task);  
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    
	    return list; 
	}
	
	

	}