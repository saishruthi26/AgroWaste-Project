<%@ page import="java.sql.*" %>

<%
String name=request.getParameter("name");
String village=request.getParameter("village");
String land=request.getParameter("land");
String crop=request.getParameter("crop");
String address=request.getParameter("address");

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/agrowaste",
"root",
"Shruthi@2007");
PreparedStatement ps=con.prepareStatement(
"insert into farmer(name,village,land,crop,address) values(?,?,?,?,?)");

ps.setString(1,name);
ps.setString(2,village);
ps.setString(3,land);
ps.setString(4,crop);
ps.setString(5,address);

ps.executeUpdate();

out.println("Farmer Details Saved Successfully");

%>