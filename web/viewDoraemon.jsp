<%-- 
    Document   : viewDoraemon
    Created on : 14-12-2023, 21:14:36
    Author     : BAO TRAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Doraemon Comics Page</title>
        <link rel="stylesheet" href="mycss.css" type="text/css">
        <style>
            th {
                background: #006666;
                color: white;
            }
        </style>
    </head>
    <body>
        <c:choose>
            <c:when test="${sessionScope.admin != null}">
                <c:set var="noti" value="That's not a page for admin" scope="request"/>
                <jsp:forward page="adminPage.jsp"/>
            </c:when>
            <c:otherwise>
                <header>
                    <c:import url="header.jsp"/>
                </header>
                <div><a href="mainController?action=viewCart">Back to cart</a></div>
                <c:choose>
                    <c:when test="${requestScope.plant == null}">
                        <c:if test="${requestScope.error == null}">
                            <h3 style="color: red">Nothing to show here</h3>
                        </c:if>
                        <h3 style="color: red">${requestScope.error}</h3>
                    </c:when>
                    <c:otherwise>
                        <div style="float: left">
                            <table border="1">
                                <tr><th>Doraemon ID</th><td>${doraemon.id}</td></tr>
                                <tr><th>Name</th><td>${doraemon.name}</td></tr>
                                <tr><th>Price</th><td>${doraemon.price}</td></tr>
                                <tr><th>Description</th><td>${doraemon.description}</td></tr>
                                <tr><th>Status</th>
                                    <td>
                                        <c:choose>
                                            <c:when test="${doraemon.status eq 1}">Available</c:when>
                                            <c:otherwise>Unavailable</c:otherwise>
                                        </c:choose>
                                    </td>
                                </tr>
                                <tr><th>Cate ID</th><td>${doraemon.cateid}</td></tr>
                                <tr><th>Category</th><td>${doraemon.catename}</td></tr>
                            </table>
                        </div>
                        <div style="float: left"><img src="${doraemon.imgpath}" style="width: 40%"/></div>
                        </c:otherwise>
                    </c:choose>
                <footer>
                    <c:import url="footer.jsp"/>
                </footer>
            </c:otherwise>
        </c:choose>
    </body>
</html>

