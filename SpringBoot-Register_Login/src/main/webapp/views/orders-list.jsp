<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>

</head>
<body>
<jsp:include page="Main.jsp"></jsp:include>

<center>

<h2>Hii ${customerName} check your orders below</h2>

	 <table style="width:50%">
	      <tr>
	        <th>Customer Name</th>
		    <th>Product Name</th>
		    <th>Quantity</th>	    
	 	 </tr>
	 	 
	 	 <c:forEach items="${orders}" var="order">
	 	 
	 	    <tr>
	 	    
	 	       <td>
	 	         <c:out value="${order.customerName}"> </c:out>
	 	       </td>
	 	       <td>
	 	         <c:out value="${order.productName}"> </c:out>
	 	       </td>
	 	       <td>
	 	         <c:out value="${order.productQuantity}"> </c:out>
	 	       </td>
	 	    
	 	    </tr>
	 	 
	 	 
	 	 </c:forEach>
	  
	  
	  </table><br><br>
	  
	   <a href="../dashboard">
	   		<button class="btn">Back To dashboard</button>
	   </a>&nbsp;&nbsp;
	  
	  
	   <a href="/logout">
	   		<button class="btn">Logout</button>
	   </a>
</center>

</body>
</html>