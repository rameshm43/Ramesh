<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<head>
<style>
.nav-tabs>li>a {
    margin-right: 2px;
    line-height: 1.42857143;
    border: 1px solid transparent;
    border-radius: 8px 8px 0 0;
}
.nav>li>a {
    position: relative;
    display: block;
    padding: 5px 15px;
}

/* tab color */
.nav-tabs li a {
  background-color: #337ab7; 
  color:white;
}

.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
    color: #555;
    cursor: default;
    background-color: #ccc;
    border: 1px solid #ddd;
    border-bottom-color: transparent;
}

</style>

</head>
   <!-- /.navbar-top-links --> 
  <ul class="nav nav-tabs">
  <c:choose>
  <c:when test="${tab=='admin'}">
   <li class="active"><a data-toggle="tab" href="#admin">Admin</a></li>
   </c:when>
   <c:otherwise>
   <li ><a data-toggle="tab" href="#admin">Admin</a></li>
   </c:otherwise>   
   </c:choose> 
    <c:choose>
  <c:when test="${tab=='dashboard'}">
    <li class="active"><a data-toggle="tab" href="#dashboard">Dash Board</a></li>
   </c:when>
   <c:otherwise>
    <li><a data-toggle="tab" href="#dashboard">Dash Board</a></li>
   </c:otherwise>   
   </c:choose> 
    <c:choose>
  <c:when test="${tab=='customer'}">
     <li class="active"><a data-toggle="tab" href="#customer">Customer</a></li>
   </c:when>
   <c:otherwise>
     <li><a data-toggle="tab" href="#customer">Customer</a></li>
    </c:otherwise>   
   </c:choose> 
    <c:choose>
  <c:when test="${tab=='report'}">
   <li class="active"><a data-toggle="tab" href="#report">Report</a></li>
  </c:when>
   <c:otherwise>
     <li><a data-toggle="tab" href="#report">Report</a></li>
  </c:otherwise>   
   </c:choose>
   
     </ul>