<%@ page import="java.sql.*"%>
<%@ page import="com.cargo.services.*"%>
<%@ page import="com.cargo.db.*"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html >
<html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

   <title>data</title>
  </head>
  <body>
    <br><br><br><br><center><h1>DATA</h1></center>
  </body>
</html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>

<table class="table">
  <br><br><br><br><thead>
    <tr>
      <th scope="col">sr no</th>
      <th scope="col">cargoID</th>
      <th scope="col">email</th>
      <th scope="col">mobile</th>
      <th scope="col">source</th>
      <th scope="col">destination</th>
      <th scope="col">material</th>
      <th scope="col">quantity</th>
    </tr>
  </thead>
 
<tbody>

<% try
		{
		Connection con=connectDB.connect();
		PreparedStatement ps=con.prepareStatement("select * from cargo_booking");
		ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
%>
				
				<tr>
			      <th scope="row"><%=rs.getInt(1)%></th>
			      <td><%=rs.getString(2)%></td>
			      <td><%=rs.getString(3)%></td>
			      <td><%=rs.getString(4)%></td>
			      <td><%=rs.getString(5)%></td>
			      <td><%=rs.getString(6)%></td>
			       <td><%=rs.getString(7)%></td>
			        <td><%=rs.getString(8)%></td>
			    </tr>
			 
			    
<% 
			
		}	
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
%>
</tbody>
</table>
		
</body>
</html>
