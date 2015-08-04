<%-- 
    Document   : display
    Created on : 17-Jul-2015, 4:20:34 PM
    Author     : c0652050
--%>

<%@page import="newpackage.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SELECT Operation</title>
        <script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
        </script>
        <style> // styles reference http://codepen.io/jackrugile/pen/EyABe
            body {
	background: #fafafa url(http://jackrugile.com/images/misc/noise-diagonal.png);
	 background-image: url("images/back.jpg");
         background-color: #cccccc;
	font: 100%/30px 'Helvetica Neue', helvetica, arial, sans-serif;
	text-shadow: 0 1px 0 #fff;
}
strong {
	font-weight: bold; 
}
em {
	font-style: italic; 
}
table {
	background: #ffaa00;
	border-collapse: separate;
	box-shadow: inset 0 1px 0 #fff;
	font-size: 18px;
	line-height: 24px;
	margin: 30px auto;
	text-align: left;
	width: 800px;
}	
th {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png), linear-gradient(#777, #444);
	border-left: 1px solid #555;
	border-right: 1px solid #777;
	border-top: 1px solid #555;
	border-bottom: 1px solid #333;
	box-shadow: inset 0 1px 0 #999;
	color: #fff;
  font-weight: bold;
	padding: 10px 15px;
	position: relative;
	text-shadow: 0 1px 0 #000;	
}
th:after {
	background: linear-gradient(rgba(255,255,255,0), rgba(255,255,255,.08));
	content: '';
	display: block;
	height: 25%;
	left: 0;
	margin: 1px 0 0 0;
	position: absolute;
	top: 25%;
	width: 100%;
}
th:first-child {
	border-left: 1px solid #777;	
	box-shadow: inset 1px 1px 0 #999;
}
th:last-child {
	box-shadow: inset -1px 1px 0 #999;
}
td {
	border-right: 1px solid #fff;
	border-left: 1px solid #e8e8e8;
	border-top: 1px solid #fff;
	border-bottom: 1px solid #e8e8e8;
	padding: 10px 15px;
	position: relative;
	transition: all 300ms;
}
td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}	
td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}	
tr {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}
tr:nth-child(odd) td {
	background: #f1f1f1 url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}
tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff; 
}
tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}	
tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}	

        </style>
    </head>
    <body>
 
    <center>
        <form>
            <table border="1" width="40%">
                <caption>Donoated Items List</caption>
                <tr>
                    
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Donated Item</th>
                    <th>Phone</th>
                    <th>E-mail</th>
                    
                </tr>
                <%
                    Database d=new Database();
                    ResultSet rs=d.display();
                    while(rs.next()){
                        out.print("<tr><td>"+rs.getString("first_name")+"</td>");
                        out.print("<td>"+rs.getString("Last_name")+"</td>");
                        out.print("<td>"+rs.getString("Donar_list")+"</td>");
                        out.print("<td>"+rs.getString("Phone")+"</td>");
                        out.print("<td>"+rs.getString("Email")+"</td></tr>");
                    }
                %>
            </table>
        </form>
        <a href="index.jsp">Go Home</a>
    </center>
        
    </head>
    
</html>
