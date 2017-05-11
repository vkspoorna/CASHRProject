<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>

     <%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core" %>

    <%@ page import="java.sql.ResultSet" %>

<%@ page import="java.sql.Statement" %>

<%@ page import="java.sql.Connection" %>

<%@ page import="java.sql.DriverManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<head>

<link href="./css/hr.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="js/hr.js"></script>

    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">

    <meta name="author" content="">



    <title>HR Dashboard</title>

    <!-- /#wrapper -->



    <!-- jQuery -->

     <script src="bower_components/jquery/dist/jquery.min.js"></script>



    <!-- Bootstrap Core JavaScript -->

    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>



    <!-- Metis Menu Plugin JavaScript -->

    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>



    <!-- Morris Charts JavaScript -->

    <script src="bower_components/raphael/raphael-min.js"></script>

    <script src="bower_components/morrisjs/morris.min.js"></script>

    <script src="js/morris-data.js"></script>



    <!-- Custom Theme JavaScript -->

    <script src="dist/js/sb-admin-2.js"></script>

    <!-- Bootstrap Core CSS -->

    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">



    <!-- MetisMenu CSS -->

    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">



    <!-- Timeline CSS -->

    <link href="dist/css/timeline.css" rel="stylesheet">



    <!-- Custom CSS -->

    <link href="dist/css/sb-admin-2.css" rel="stylesheet">



    <!-- Morris Charts CSS -->

    <link href="bower_components/morrisjs/morris.css" rel="stylesheet">



    <!-- Custom Fonts -->

    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">



    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>

        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>

        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>

    <![endif]-->











</head>



<body>





  <nav class="navbar navbar-default navbar-static-top navbar-inverse" role="navigation">



    <div class="navbar-header">

      

            

      <div class="container">

 

   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">

        <span class="icon-bar"></span>

        <span class="icon-bar"></span>

        <span class="icon-bar"></span>                        

      </button>

     

       <h8 class="navbar-brand">HR Dashboard &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h8>

	

	<div class="collapse navbar-collapse js-navbar-collapse">

		

		 <ul class="nav navbar-nav navbar-left">

        <li class="dropdown">

          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dashboard<span class="caret"></span></a>

          <ul class="dropdown-menu" role="menu">

            <li><a href="dept_dashboard.jsp"target="_blank">Department Dashboard</a></li>

            <li class="divider"></li>

            <li><a href="dept_avg_salary_dashboard.jsp"target="_blank">Department Average Salary</a></li>

            <li class="divider"></li>

            <li><a href="sal_each_dept_dashboard.jsp"target="_blank">Salary of each department</a></li>

  

          </ul>

        </li>

      </ul>

		

        <ul class="nav navbar-nav navbar-left">

        <li class="dropdown">

          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Salary Distribution <span class="caret"></span></a>

          <ul class="dropdown-menu" role="menu">

            <li><a href="average_sal_per_title.jsp"target="_blank">Average salary per Title</a></li>

            <li class="divider"></li>

            <li><a href="average_sal_per_dept.jsp"target="_blank">Average salary per Department</a></li>

            <li class="divider"></li>

            <li><a href="annualcount.jsp"target="_blank">Annual count of Salaries</a></li>

            

          </ul>

        </li>

      </ul>

      

              <ul class="nav navbar-nav navbar-left">

        <li class="dropdown">

          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Gender Overview<span class="caret"></span></a>

          <ul class="dropdown-menu" role="menu"> 

            <li><a href="gender_ratio.jsp"target="_blank">Gender Ratio</a></li>

            <li class="divider"></li>

            <li><a href="age_distribution.jsp"target="_blank">Age Distribution</a></li>

            <li class="divider"></li>

            <li><a href="annualhire_gender.jsp"target="_blank">Annual Hiring</a></li>

            

          </ul>

        </li>

      </ul>

      

              <ul class="nav navbar-nav navbar-left">

        <li class="dropdown">

          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Department Overview <span class="caret"></span></a>

          <ul class="dropdown-menu" role="menu">

            <li><a href="highestsal_perdept.jsp"target="_blank">Department Details</a></li>

            <li class="divider"></li>

            <li><a href="annualcount_dept.jsp"target="_blank">Annual Employee Count in each Department</a></li>

            <li class="divider"></li>

            <li><a href="dept_strength.jsp"target="_blank">Department Strength</a></li>

           

          </ul>

        </li>

      </ul>

      

             

      <ul class="nav navbar-nav navbar-right">

            <li><a href="Logout" id="signout"><span class="glyphicon glyphicon-lock"></span> Sign Out</a></li>

        </ul>

      

	</div><!-- /.nav-collapse -->

	</div>

	</div>

  </nav>



      

      

      

      <div id="page-wrapper" div align="center" style="vertical-align:bottom">

            <div class="row">

                <div class="col-lg-12">

                    <h3 class="page-header">Employee Details</h3>

                </div>

                <!-- /.col-lg-12 -->

            </div>

            

            <!-- /.row -->

            <!-- /.row -->

           <div class="row">

           <form method="post">

     

 

 <div class="wrapper2">



  &ensp;<input class="your-input" name="UserId" placeholder="Enter User Id" required="" autofocus="" />&nbsp;&nbsp;&nbsp;

  <button class="btn btn-primary">SUBMIT</button>



</div>

 <br/><br/><br/></br>

<table class="table table-striped table-bordered table-hover" >

<thead>

           		<tr>

           	<th><p align="center">First Name</p></th>

           		<th><p align="center">Last Name</p></th>

           		<th><p align="center">Salary</p></th>

           		<th><p align="center">Hire Date</p></th>

           		<%-- <th><p align="center">Start Date</p></th>   --%>

           		<th><p align="center">Birth Date</p></th>

           		<th><p align="center">Department Name</p></th>

           		</tr>

           		</thead>

<%

try

{

Class.forName("com.mysql.jdbc.Driver");

String url="jdbc:mysql://localhost:3306/mycasdb?useSSL=false";

String username="debian-sys-maint";

String password="TehT6S4yAaGfYHCS";

String empid=request.getParameter("UserId");

//String query="select e.first_name,e.last_name,s.salary from employees e,salaries s where e.emp_no='"+empid+"' and s.emp_no='"+empid+"' LIMIT 10";

String query="select e.first_name,e.last_name,s.salary,e.hire_date,e.birth_date,d.dept_name from employees e,salaries s,departments d,dept_emp de where e.emp_no='"+empid+"' and s.emp_no='"+empid+"' and de.emp_no='"+empid+"' and de.dept_no=d.dept_no LIMIT 1";

Connection conn=DriverManager.getConnection(url, username, password);

Statement stmt=conn.createStatement();

ResultSet rs=stmt.executeQuery(query);

while(rs.next())

{



%>



<tr>

<td align="center"><%=rs.getString("first_name") %></td>

<td align="center"><%=rs.getString("last_name") %></td>

<td align="center"><%=rs.getString("salary") %></td>

<td align="center"><%=rs.getString("hire_date") %></td>

<%-- <td align="center"><%=rs.getString("from_date") %></td> --%>

<td align="center"><%=rs.getString("birth_date") %></td>

<td align="center"><%=rs.getString("dept_name") %></td>

</tr>

 <%



}

%>

</table>

<%

rs.close();

stmt.close();

conn.close();

}

catch(Exception e)

{

e.printStackTrace();

}

%>

</form>

</div>

     

     

     

    

            <div class="row">

                <div class="col-lg-12">

                    <h3 class="page-header">Department Details</h3>

                </div>

                <!-- /.col-lg-12 -->

            </div>

            

         





<table class="table table-striped table-bordered table-hover" >

<thead>

           		<tr>

           		<th><p align="center">Department Number</p></th>

           		<th><p align="center">Department Name</p></th>

           		</tr>

           		</thead>

<%

try

{

Class.forName("com.mysql.jdbc.Driver");

String url="jdbc:mysql://localhost:3306/mycasdb?useSSL=false";

String username="debian-sys-maint";

String password="TehT6S4yAaGfYHCS";

String query="select * from departments";

Connection conn=DriverManager.getConnection(url, username, password);

Statement stmt=conn.createStatement();

ResultSet rs=stmt.executeQuery(query);

while(rs.next())

{



%>



<tr>

<td align="center"><%=rs.getString("dept_no") %></td>

<td align="center"><%=rs.getString("dept_name") %></td>



</tr>

 <%



}

%>

</table>

<%

rs.close();

stmt.close();

conn.close();

}

catch(Exception e)

{

e.printStackTrace();

}

%>

           

        

           </div>

           





</body>



</html>
