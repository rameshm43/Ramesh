<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<head>
  <!-- Bootstrap Core CSS -->
	<link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"></link>
 
     <!-- MetisMenu CSS -->
     <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"></link>
   
   <link href="static/vendor/CustomDateTimePicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
   
    <!-- Custom CSS -->
     <link href="static/dist/css/sb-admin-2.css" rel="stylesheet"></link>

    <!-- Morris Charts CSS -->
     <link href="static/vendor/morrisjs/morris.css" rel="stylesheet"></link>
   
    <!-- Custom Fonts -->
     <link href="static/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet"></link>
  </head>
     <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Loan Management v1.0</a>
            </div>
            <!-- /.navbar-header -->
 <span>Dear <strong>${loggedinuser}</strong></span>
            <ul class="nav navbar-top-links navbar-right">
       
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                   
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                    	
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="<c:url value='/logout' />"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
      </nav>
