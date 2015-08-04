<%-- 
    Document   : insert
    Created on : 25-Jul-2015, 12:10:14 PM
    Author     : aditya7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-alpha1/jquery.min.js'></script>
        <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js"></script>
        
        <title>TheGoodWill</title>
    <style> // styles reference http://codepen.io/jackrugile/pen/EyABe
            body {
	background: #000000 url(http://jackrugile.com/images/misc/noise-diagonal.png);
	color:  #44314B;

	font: 100%/30px 'Helvetica Neue', helvetica, arial, sans-serif;
	text-shadow: 0 1px 0 #ffc34c;
}
body {
    background-image: url("../images/back.jpg");
    background-color: #cccccc;
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
	color: #ffc34c;
  font-weight: bold;
	padding: 10px 15px;
	position: relative;
		
}

th:after {
	background: linear-gradient(rgba(255,255,255,0), rgba(255,255,255,.08));
	content: '';
	display: block;
	height: 75%;
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



tbody:hover tr:hover td {
	color: #444;
	text-shadow: 0 1px 0 #fff;
}
        </style>
        <script type="text/javascript">
            $(document).ready(function(){
               $('form').validate({
                   rules:{
                       firstName:{
                           required:true
                       },
                       
                       lastName:{
                           required:true
                       },
                       donatedItem:{
                           required:true
                       },
                       
                       phone:{
                           required:true
                       },
                       
                       email:{
                           required:true
                       }
                       
                       }
                       
                   }
               }) 
            });
        </script>
    </head>
    <body>
        <form action="DB" method="post">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">The Goodwill</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>First Name</label></td>
                        <td><input type="text" name="firstName" id='firstName'/></td>
                    </tr>
                    <tr>
                        <td><label>Last Name</label></td>
                        <td><input type="text" name="lastName" id ='lastName'/></td>
                    </tr>
                    <tr>
                        <td><label>Donated Item</label></td>
                        <td><input type="text" name="donatedItem" id='donateItem' /></td>
                    </tr>
                    <tr>
                        <td><label>Phone</label></td>
                        <td><input type="text" name="phone" id='phone'/></td>
                    </tr>
                    <tr>
                        <td><label>E-mail</label></td>
                        <td><input type="text" name="email"id='email'/></td>
                    </tr>
                    <tr>                        
                        <td><input type="reset" value="reset"/></td>
                        <td><input type="submit" value="Save" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <font color="red"><c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
            <a href="index.jsp">Go Back</a>
        </c:if></font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" />
            <a href="index.jsp">Go Back</a>
        </c:if></font>
 
    </body>
</html>
