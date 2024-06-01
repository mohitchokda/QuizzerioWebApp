<%@ page import="java.io.*,jva.util.*,javax.servlet.*,java.sql.*"%>
<%
Connection con=null;
PreparedStatement pst=null;
ResultSet rs=null;
String sql="select username,email,pwd from register where email=? and pwd=?";
try{
	Class.forName("com.mysql.jdbc.Driver");	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MiniProject","root","");
	pst=con.prepareStatement(sql);
   pst.setString(1,request.getParameter("email"));
   pst.setString(2,request.getParameter("pwd1"));
   rs=pst.executeQuery();
   if(rs.next()){
     response.sendRedirect("h2.html");
   }
   else{
     alert("Invalid User");
   }
}
catch(SQLException ex){
out.println(ex);
}
%>