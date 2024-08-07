<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored = "false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
</head>
<body>

<jsp:include page="Main.jsp"></jsp:include>

 <center>
  
  <h1>Hii ${customer.customerName} Welcome to Dashboard !! </h1>
  <h2>*** Buy products online ***</h2>
  
  <table style="width:100%">
      <tr>
        <th>Product Id</th>
	    <th>Product Name</th>
	    <th>Product price</th>
	    <th>Quantity</th>
	    <th></th>
	    
 	 </tr>
 	 
 	 <c:forEach items="${products}" var="product">
 	 
 	    <tr>
 	       <td>
 	         <c:out value="${product.productId}"></c:out>
 	       </td>
 	       <td>
 	         <c:out value="${product.productName}"></c:out>
 	       </td>
 	       <td>
 	         <c:out value="${product.productPrice}"></c:out>
 	       </td>
 	       <td>
 	       	 <c:out value="${product.productQuantity}"></c:out>
 	       </td>
 	       <td>
 	         <a href="purchase/${customer.customerId}/${product.productId}">
 	            <button class="btn">Purchase</button>
 	         </a>
 	       </td>
 	    
 	    </tr>
 	 
 	 
 	 </c:forEach>
  
  
  </table>
 <br><br>
 
 <a href="orders/${customer.customerId}">
   <button class="btn">View Orders</button>
</a> &nbsp;&nbsp;
 
 
 <a href="/logout">
   <button class="btn">Logout</button>
 </a>
 </center>
 
 

</body>
</html>