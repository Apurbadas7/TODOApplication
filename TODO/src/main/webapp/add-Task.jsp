<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Task</title>
<%@ include file="bootstrap.jsp" %>
</head>
<body>
<%@ include file="NavBar.jsp" %>
<h2 class="text-center " style="color:black">Add Task</h2>


<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-body" style="background-color:#D5FFFF">
                    
                    <form action="add" method="post">
                        
                        <div class="form-group">
                            <label for="task">Task</label>
                            <input type="text" class="form-control" id="task" name="task" placeholder="Enter Task" required>
                        </div>
                        
                        <div class="form-group">
                            <label for="status">Status</label>
                            <select id="status" name="status" class="form-control" required>
                                <option value="" disabled selected>--Select--</option>
                                <option value="Pending">Pending</option>
                                <option value="Completed">Completed</option>
                            </select>
                        </div>
                        
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Add Task</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
