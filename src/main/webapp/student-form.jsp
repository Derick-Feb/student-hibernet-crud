<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; }
        .form-container { max-width: 500px; margin: 50px auto; background: white; padding: 30px; border-radius: 10px; box-shadow: 0 0 15px rgba(0,0,0,0.1); }
    </style>
</head>
<body>

<div class="container">
    <div class="form-container">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="list">Student Management</a></li>
                <li class="breadcrumb-item active">${student != null ? "Edit" : "Add"} Student</li>
            </ol>
        </nav>

        <h2 class="mb-4 text-center">
            ${student != null ? "Edit Student" : "Add New Student"}
        </h2>

        <form action="${student != null ? 'update' : 'insert'}" method="post">
            
            <c:if test="${student != null}">
                <input type="hidden" name="id" value="${student.id}" />
            </c:if>

            <div class="mb-3">
                <label class="form-label">Full Name</label>
                <input type="text" name="name" class="form-control" value="${student.name}" placeholder="Enter name" required />
            </div>

            <div class="mb-3">
                <label class="form-label">Email address</label>
                <input type="email" name="email" class="form-control" value="${student.email}" placeholder="name@example.com" required />
            </div>
            
            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-success">Save Student</button>
                <a href="list" class="btn btn-light border">Cancel</a>
            </div>
        </form>
    </div>
</div>

</body>
</html>