<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file = "adminHeader.jsp"%>
<%@include file = "../footer.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">All Products & Edit Products <i class='fab fa-elementor'></i></div>
<%
String msg = request.getParameter("msg");
if ("done".equals(msg))
{
%>
<h3 class="alert">Product Successfully Updated!</h3>

<%} %>
<%
    if ("wrong".equals(msg))
    {
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th>Status</th>
            <th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
          </tr>
        </thead>
        <tbody>

        <%
        try {
            Connection con = ConnectionProvider.getCon();
            Statement statement = con.createStatement();

            ResultSet result = statement.executeQuery("select * from product");
            while(result.next())
            {
        %>

          <tr>
            <td><%=result.getString(1) %></td>
            <td><%=result.getString(2) %></td>
            <td><%=result.getString(3) %></td>
            <td><i class="fa fa-inr"></i> <%=result.getString(4) %></td>
            <td><%=result.getString(5) %></td>
            <td><a href="editProduct.jsp?id="<%=result.getString(1) %>">Edit <i class='fas fa-pen-fancy'></i></a></td>
          </tr>

        <%}
        }
        catch (Exception e)
        {
            System.out.println(e);
        }
        %>

        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>


<%--<%@page import="project.ConnectionProvider" %>--%>
<%--<%@page import="java.sql.*" %>--%>
<%--<%@include file="adminHeader.jsp" %>--%>
<%--<%@include file="../footer.jsp" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>Home</title>--%>
<%--    <style>--%>
<%--        h3 {--%>
<%--            color: yellow;--%>
<%--            text-align: center;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div style="color: white; text-align: center; font-size: 30px;">All Products & Edit Products <i--%>
<%--        class='fab fa-elementor'></i></div>--%>
<%--<%--%>
<%--    String msg = request.getParameter("msg");--%>
<%--    if ("done".equals(msg)) {--%>
<%--%>--%>
<%--<h3 class="alert">Product Successfully Updated!</h3>--%>
<%--<%--%>
<%--} else if ("wrong".equals(msg)) {--%>
<%--%>--%>
<%--<h3 class="alert">Something went wrong! Try again!</h3>--%>
<%--<%--%>
<%--    }--%>
<%--%>--%>
<%--<table>--%>
<%--    <thead>--%>
<%--    <tr>--%>
<%--        <th scope="col">ID</th>--%>
<%--        <th scope="col">Name</th>--%>
<%--        <th scope="col">Category</th>--%>
<%--        <th scope="col"><i class="fa fa-inr"></i> Price</th>--%>
<%--        <th>Status</th>--%>
<%--        <th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>--%>
<%--    </tr>--%>
<%--    </thead>--%>
<%--    <tbody>--%>
<%--    <%--%>
<%--        try {--%>
<%--            Connection con = ConnectionProvider.getCon();--%>
<%--            Statement statement = con.createStatement();--%>
<%--            System.out.println("i AM CONNECTED");--%>
<%--            ResultSet result = statement.executeQuery("SELECT * FROM product");--%>

<%--            while (result.next()) {--%>
<%--    %>--%>
<%--    <tr>--%>
<%--        <td><%=result.getString(1) %>--%>
<%--        </td>--%>
<%--        <td><%=result.getString(2) %>--%>
<%--        </td>--%>
<%--        <td><%=result.getString(3) %>--%>
<%--        </td>--%>
<%--        <td><i class="fa fa-inr"></i> <%=result.getString(4) %>--%>
<%--        </td>--%>
<%--        <td><%=result.getString(5) %>--%>
<%--        </td>--%>
<%--        <td><a href="#">Edit <i class='fas fa-pen-fancy'></i></a></td>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--            }--%>
<%--            result.close();--%>
<%--            statement.close();--%>
<%--            con.close();--%>
<%--        } catch (SQLException e) {--%>
<%--                System.out.println("SQL Error: " + e.getMessage());--%>
<%--        } catch (Exception e) {--%>
<%--            System.out.println("Error: " + e.getMessage());--%>
<%--        }--%>
<%--    %>--%>
<%--    </tbody>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>



