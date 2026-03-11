<%@ page import="java.sql.*" %>

<%
Connection con = null;

try{
Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/agrowaste",
"root",
"Shruthi@2007");
}
catch(Exception e){
out.println(e);
}
%>