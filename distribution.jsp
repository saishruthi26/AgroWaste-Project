<%@ page import="java.sql.*" %>

<%
String farmer = request.getParameter("farmer");
String fertilizer_type = request.getParameter("fertilizer_type");
String quantity = request.getParameter("quantity");
String date = request.getParameter("date");

Connection con = null;
PreparedStatement ps = null;

try{

Class.forName("com.mysql.cj.jdbc.Driver");

con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/agrowaste",
"root",
"Shruthi@2007");

ps = con.prepareStatement(
"INSERT INTO distribution(farmer,fertilizer_type,quantity,distribution_date) VALUES (?,?,?,?)");

ps.setString(1,farmer);
ps.setString(2,fertilizer_type);
ps.setString(3,quantity);
ps.setString(4,date);

ps.executeUpdate();

out.println("<h2>Fertilizer Distributed Successfully</h2>");

}catch(Exception e){
out.println(e);
}

%>