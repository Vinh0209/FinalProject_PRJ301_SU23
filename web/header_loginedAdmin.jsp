<%-- 
    Document   : header_loginedAdmin
    Created on : 14-12-2023, 20:22:54
    Author     : BAO TRAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="mycss.css" type="text/css">
    </head>
    <body>
        <header>
            <ul>
                <li><a href="adminPage.jsp">Welcome back ${sessionScope.admin.fullname}</a></li>
                <li><a href="mainController?action=manageAccounts">Manage Accounts</a></li>
                <li><a href="mainController?action=manageOrders">Manage Orders</a></li>
                <li><a href="mainController?action=manageDoraemon">Manage Doraemon Comics</a></li>
                <li><a href="mainController?action=manageCategories">Manage Categories</a></li>
                <li><a href="mainController?action=logout">Log Out</a></li>
            </ul>
        </header>
    </body>
</html>
