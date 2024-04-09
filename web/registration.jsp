<%-- 
    Document   : registration
    Created on : 14-12-2023, 21:10:06
    Author     : BAO TRAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="mycss.css" type="text/css">
    </head>
    <body>
        <header>
            <%@include file="header.jsp" %>
        </header>
        <h1>Register</h1>
        <form action="mainController" method="post">
            <table>
                <tr><td>Email: </td>
                    <td><input type="text" name="txtemail" required="" value="${param.txtemail}" placeholder="Enter Email"></td></tr>
                <tr><td>Full Name: </td>
                    <td><input type="text" name="txtfullname" required="" value="${param.txtfullname}" placeholder="Enter Full Name"></td></tr>
                <tr><td>Password: </td>
                    <td><input type="password" name="txtpassword" required="" value="${param.txtpassword}" placeholder="Enter Password"></td></tr>
                <tr><td>Phone: </td>
                    <td><input type="text" name="txtphone" required="" value="${param.txtphone}" placeholder="Enter Phone"></td></tr>
            </table>
            <input type="submit" value="register" name="action">
        </form>
        <h3 style="color: red">${requestScope.error}</h3>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>
