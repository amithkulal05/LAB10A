<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <script type="text/javascript">
        function validateForm() {
            var name = document.forms["userForm"]["username"].value;
            var email = document.forms["userForm"]["email"].value;
            var designation = document.forms["userForm"]["designation"].value;
            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

            if (name == "" || email == "" || designation == "") {
                alert("All fields must be filled out");
                return false;
            }
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <h2>User Details Form</h2>
    <form name="userForm" action="UserDataServlet" method="POST" onsubmit="return validateForm()">
        Username: <input type="text" name="username"><br><br>
        Email: <input type="text" name="email"><br><br>
        Designation: <input type="text" name="designation"><br><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
