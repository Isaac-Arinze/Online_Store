<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file = "adminHeader.jsp"%>
<%@include file = "../footer.jsp"%>


<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>

 <%
String id = request.getParameter("id");

try{

 Connection con = ConnectionProvider.getCon();
 Statement statement = con.createStatement();
 ResultSet result = statement.executeQuery("SELECT * FROM product where id = '"+id+"'");

 while (result.next())
 {

 %>
 <form action="editProductAction..jsp" method="post" >

<div class="left-div">
 <h3>Product</h3>
 <input class="input-style"  type="text" name="product" value="<%=result.getString(2) %>" required>

<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
 <input class="input-style"  type="text" name="category" value="<%=result.getString(3) %>" required>
 
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
 <input class="input-style"  type="number" name="price" value="<%=result.getString(4) %>" required>
 
<hr>
</div>

<div class="right-div">
<h3>Available</h3>
<%-- <input class="input-style"  type="text" name="name" value="<%=result.getString() %>" required>--%>

 <select class="input-style" name="Available">
  <option value="Yes">Yes</option>
  <option value="No">No</option>

 </select>
 <hr>
</div>

 <button class="button"> save <i class='far fa-arrow-alt-circle-right'></i></button>

 </form>
<%-- <i class='far fa-arrow-alt-circle-right'></i>--%>

<%

 }
 }
catch (Exception e){
 System.out.println(e);
}
%>

</body>
<br><br><br>
</body>
</html>