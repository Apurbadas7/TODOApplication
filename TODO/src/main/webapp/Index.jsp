<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.TODO.TaskDao" %>
<%@ page import="com.TODO.Task" %>
<%@ page import="com.TODO.DbConnection" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TODO Tasks</title>
<%@ include file="bootstrap.jsp" %>
</head>
<body class="text-center" style="background-color:FFC5D3">
<%@ include file="NavBar.jsp" %>

<h2 class="text-center " style="color:black">TODO-Task</h2>

<div class="Container">

<div class="row">
<div class="col-md-8 offset-md-2">
<div class="card" style="background-color:#D5FFFF">
<div class="card-body">
<table class="table table-striped">
  <thead style="background-color:#ADDFFF">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">TODO</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
      <th scope="col">Time</th>
    </tr>
  </thead>
  <tbody>
  <% 
    TaskDao dao = new TaskDao(DbConnection.getConnection());
    List<Task> tasks = dao.getTask();

    for (Task task : tasks) {
  %>
    <tr>
      <th scope="row"><%= task.getId() %></th>
      <td><%= task.getTask() %></td>
      <td><%= task.getStatus() %></td>
      <td>
      
        <a href="edit.jsp?id=<%= task.getTask() %>" class="btn btn-sm btn-success">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen-fill" viewBox="0 0 16 16">
            <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001"/>
          </svg>
        </a>
        
        
       <form action="Delete" method="post">
          <input type="hidden" name="id" value="<%= task.getId() %>">
          <button type="submit" class="btn btn-sm btn-danger">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-archive-fill" viewBox="0 0 16 16">
              <path d="M12.643 15C13.979 15 15 13.845 15 12.5V5H1v7.5C1 13.845 2.021 15 3.357 15zM5.5 7h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1 0-1M.8 1a.8.8 0 0 0-.8.8V3a.8.8 0 0 0 .8.8h14.4A.8.8 0 0 0 16 3V1.8a.8.8 0 0 0-.8-.8z"/>
            </svg>
          </button>
        </form>
        
      </td>
      <td><%= task.getCreatedAt() %></td>
    </tr>
  <% } %>
  </tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</div>

</body>
</html>
