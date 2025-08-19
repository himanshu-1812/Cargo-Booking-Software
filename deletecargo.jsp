<%@ page import="java.sql.*"%>
<%@ page import="com.cargo.services.*"%>
<%@ page import="com.cargo.db.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>delete</title>
</head>
<body>

<%
String cargoID = request.getParameter("cargoID");

try
{
	Connection con = connectDB.connect();
	PreparedStatement ps = con.prepareStatement("delete from cargo_booking where cargoID=?");
	ps.setString(1, cargoID);
	int i = ps.executeUpdate();
	if(i>0)
	{
		response.sendRedirect("showSome.jsp");
	}
	else
	{
		response.sendRedirect("show.jsp");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>


</body>


</html>