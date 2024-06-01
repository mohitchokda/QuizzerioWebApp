<%@ page import="java.io.*,java.util.*,javax.servlet.*,java.sql.*"%>
<%
Connection con=null;
Statement st=null;
int num=1;
String name,mail,comment;
name=request.getParameter("name");
mail=request.getParameter("email2");
comment=request.getParameter("comments");
try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","root","");
	st=con.createStatement();
	int x=st.executeUpdate("insert into contact values("+num+",'"+name+"','"+mail+"','"+comment+"');");
if(x==0)
  out.println("Error in DataBase");
    num++;
}
catch(SQLException ex){
out.println(ex);
}
%>