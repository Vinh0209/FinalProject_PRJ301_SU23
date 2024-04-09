<%-- 
    Document   : plantDetail
    Created on : 14-12-2023, 21:01:34
    Author     : BAO TRAN
--%>

<%@page import="dao.DoraemonComicsDAO"%>
<%@page import="dto.DoraemonComics"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doraemon Detail Page</title>
    </head>
    <body>
        <%
            String plantid = request.getParameter("plantid");
            if (plantid != null) {
                int plantID = Integer.parseInt(plantid.trim());
                DoraemonComics p = DoraemonComicsDAO.getDoraemons(plantID);
        %>
        <table>
            <tr>
                <td>Doraemon ID</td>
                <td>Doraemon Name</td>
                <td>Price</td>
                <td>Image</td>
                <td>Description</td>
                <td>Status</td>
                <td>Category ID</td>
                <td>Category Name</td>
            </tr>
            <tr>
                <td><%=p.getId()%></td>
                <td><%=p.getName()%></td>
                <td><%=p.getPrice()%></td>
                <td><img src="<%=p.getImgpath()%>"></td>
                <td><%=p.getDescription()%></td>
                <%
                    if (p.getStatus() == 1) {
                %>
                <td>Is Available</td>
                <%
                } else {
                %>
                <td>Is empty</td>
                <%
                    }
                %>
                <td><%=p.getCateid()%></td>
                <td><%=p.getCatename()%></td>
            </tr>
        </table>
        <%
        } else {
        %>
        <p>Invalid Doraemon ID</p>
        <%
            }
        %>
        <a href="viewCart.jsp">Go to Cart</a>
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
    </body>
</html>

