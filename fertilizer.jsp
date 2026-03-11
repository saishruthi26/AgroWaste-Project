<%@ page import="java.sql.*" %>

<%
String type = request.getParameter("type");
String quantity = request.getParameter("quantity");
String production_date = request.getParameter("production_date");

Connection con = null;
PreparedStatement ps = null;

try{

Class.forName("com.mysql.cj.jdbc.Driver");

con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/agrowaste",
"root",
"Shruthi@2007");

ps = con.prepareStatement(
"INSERT INTO fertilizer(type,quantity,production_date) VALUES (?,?,?)");

ps.setString(1,type);
ps.setString(2,quantity);
ps.setString(3,production_date);

ps.executeUpdate();

out.println("<h2>Fertilizer Production Saved Successfully</h2>");

}catch(Exception e){
out.println(e);
}

%>