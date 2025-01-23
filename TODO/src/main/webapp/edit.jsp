<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="bootstrap.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Task</title>
</head>
<body class="text-center" style="background-color:FFC5D3; background-image: url('background1.jpg'); background-size: cover; background-position: center">
<%@ include file="NavBar.jsp" %>

<div class="container mt-5">
    <h2 class="text-center "style="color:black">Edit Task</h2>
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card" style="background-color:#D5FFFF">
                <div class="card-body">
                    <form action="edit" method="post">
                        
                        

                        
                        <div class="form-group">
                            <label for="task">Task</label>
                            <input type="text" class="form-control" id="task" name="task" 
                                  placeholder="Enter Task"  required>
                        </div>

                        
                        <div class="form-group">
                            <label for="status">Status</label>
                            <select class="form-control" id="status" name="status">
                                <option value="Pending" >Pending</option>
                                <option value="Completed" >Completed</option>
                            </select>
                        </div>

                        <a href="Index.jsp">
                        <button type="submit" class="btn btn-primary">Update Task</button></a>
                        <a href="Index.jsp" class="btn btn-secondary">Cancel</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
