<%@ page import="java.sql.*" %>

<%
String farmer=request.getParameter("farmer");
String waste_type=request.getParameter("waste_type");
String quantity=request.getParameter("quantity");
String pickup=request.getParameter("pickup");

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/agrowaste",
"root",
"Shruthi@2007");

PreparedStatement ps=con.prepareStatement(
"insert into collection(farmer,waste_type,quantity,pickup) values(?,?,?,?)");

ps.setString(1,farmer);
ps.setString(2,waste_type);
ps.setString(3,quantity);
ps.setString(4,pickup);

ps.executeUpdate();

out.println("Collection Request Submitted");
%>