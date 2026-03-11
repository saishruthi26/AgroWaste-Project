<%@ page import="java.sql.*" %>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String message = request.getParameter("message");

Connection con = null;
PreparedStatement ps = null;

try{

Class.forName("com.mysql.cj.jdbc.Driver");

con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/agrowaste",
"root",
"Shruthi@2007");

ps = con.prepareStatement(
"INSERT INTO feedback(name,email,message) VALUES (?,?,?)");

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,message);

ps.executeUpdate();

out.println("<h2>Feedback Submitted Successfully</h2>");

}catch(Exception e){
out.println(e);
}

%>