<%@ page import="java.sql.*" %>

<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String password=request.getParameter("password");
String role=request.getParameter("role");

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/agrowaste","root","Shruthi@2007");

PreparedStatement ps=con.prepareStatement(
"insert into users(name,email,phone,password,role) values(?,?,?,?,?)");

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,phone);
ps.setString(4,password);
ps.setString(5,role);

ps.executeUpdate();

out.println("Registration Successful");

%>