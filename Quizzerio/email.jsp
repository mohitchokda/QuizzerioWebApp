<%@ page import="java.io.*,java.util.*,javax.servlet.*,java.sql.*"%>
<%
Connection con=null;
Statement st=null;
String email;
email=request.getParameter("email1");
try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","root","");
	st=con.createStatement();
	int x=st.executeUpdate("insert into subscribe values ('"+mail+"');");
}
catch(SQLException ex){
out.println(ex);
}
%>
<% if(x>=0)
	out.println("<h1>Success</h1>");
%>