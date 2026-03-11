<%@ page import="java.sql.*" %>

<%

String farmer=request.getParameter("farmer");
String type=request.getParameter("type");
String quantity=request.getParameter("quantity");
String description=request.getParameter("description");

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/agrowaste","root","Shruthi@2007");

PreparedStatement ps=con.prepareStatement(
"insert into waste(farmer,type,quantity,description) values(?,?,?,?)");

ps.setString(1,farmer);
ps.setString(2,type);
ps.setString(3,quantity);
ps.setString(4,description);

ps.executeUpdate();

out.println("Waste Submitted Successfully");

%>