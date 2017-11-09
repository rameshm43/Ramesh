<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
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