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
<section id="main-content">
	<section class="wrapper">
	<div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        
        
        <div class="form-w3layouts">
        <!-- page start-->
        <!-- page start-->
        <div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                       
                        <div class="panel-body">
                            <div class="position-center">
                                <form role="form" action="showSome.jsp" method="post">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Cargo ID</label>
                                    <input type="text" name="cargoID" class="form-control" id="exampleInputEmail1" placeholder="Enter Cargo ID">
                                </div>
                                
                                
                              
                                <button type="submit" class="btn btn-info">Find</button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
          
        </div>
      


        <!-- page end-->
        </div>
        
    <%
    String cargoID = request.getParameter("cargoID");
    if(cargoID!=null)
    {
    %>    
        <section class="wrapper">
		<div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
    Cargo ID
    </div>
    <div>
      <table class="table" ui-jq="footable" ui-options='{
        "paging": {
          "enabled": true
        },
        "filtering": {
          "enabled": true
        },
        "sorting": {
          "enabled": true
        }}'>
        
        <thead>
          <tr>
            <th data-breakpoints="xs">sr no</th>
           
		      <th scope="col">cargoID</th>
		      <th scope="col">email</th>
		      <th scope="col">mobile</th>
		      <th scope="col">source</th>
		      <th scope="col">destination</th>
		      <th scope="col">material</th>
		      <th scope="col">quantity</th>
            <th data-breakpoints="xs">Action</th>
          </tr>
        </thead>
        
        <tbody>
        
        <%

        	try
        	{
                Connection con = connectDB.connect();
        		PreparedStatement ps = con.prepareStatement("select * from cargo_booking where cargoID=?");
        		ps.setString(1, cargoID);
        		ResultSet rs = ps.executeQuery();
        		while(rs.next())
        		{
        		%>	
        			
        			  <tr data-expanded="true">
			           <th scope="row"><%=rs.getInt(1)%></th>
			      <td><%=rs.getInt(2)%></td>
			      <td><%=rs.getString(3)%></td>
			      <td><%=rs.getString(4)%></td>
			      <td><%=rs.getString(5)%></td>
			      <td><%=rs.getString(6)%></td>
			       <td><%=rs.getString(7)%></td>
			        <td><%=rs.getString(8)%></td>
			            <td><a href="deletecargo.jsp?cargoID=<%=rs.getString(1)%>">Delete</a></td>
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
    </div>
  </div>
</div>
</section>
<%
    }
%>        
      


        <!-- page end-->
        </div>
</section>
 <!-- footer -->

  <!-- / footer -->
</section>
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
