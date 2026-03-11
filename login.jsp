<%@ page import="java.sql.*" %>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");

Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

try{

Class.forName("com.mysql.cj.jdbc.Driver");

con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/agrowaste",
"root",
"Shruthi@2007");

ps = con.prepareStatement(
"SELECT * FROM users WHERE email=? AND password=?");

ps.setString(1,email);
ps.setString(2,password);

rs = ps.executeQuery();

if(rs.next())
{
out.println("<h2>Login Successful</h2>");
response.sendRedirect("index.html");
}
else
{
out.println("<h2>Invalid Email or Password</h2>");
}

}catch(Exception e){
out.println(e);
}

%>