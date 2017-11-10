<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Dash Board</title>
     <!-- Bootstrap Core CSS -->
	<link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"></link>
 
     <!-- MetisMenu CSS -->
     <link href="static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"></link>
   
    <!-- Custom CSS -->
     <link href="static/dist/css/sb-admin-2.css" rel="stylesheet"></link>

    <!-- Morris Charts CSS -->
     <link href="static/vendor/morrisjs/morris.css" rel="stylesheet"></link>
   
    <!-- Custom Fonts -->
     <link href="static/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet"></link>
  
     <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
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
.margin_add{
         margin: 10px;
         }
         /* Fix alignment issue of label on extra small devices in Bootstrap 3.2, without this form group sticks together */
         .form-horizontal .control-label{
         padding-top: 7px;
         }

hr {
    height: 1px; 
    background-color:#555; 
    margin-top: 0px;
    margin-bottom: 1px;
    width: 75%;
}

.about-border {
   
    width: 100%;
    height: 0px;
    background: #f1cd8f;
    margin: 5px auto;
	    margin-top: 0px;
    margin-bottom: 1px;
}

.mypanel {
   /* height: 100px; */
    /*overflow-y: scroll; */
	    overflow-x: scroll; 
}


</style>
</head>

<body>

    <div id="wrapper">
  <jsp:include page="includeHeaders.jsp" />  
    <jsp:include page="includeTabs.jsp" />  
  <div class="tab-content">
    <div id="admin" class="tab-pane fade in active">        
            <jsp:include page="Include_Admin_Sidemenu.jsp" />                    
            <jsp:include page="Include_Admin_Sidemenu.jsp" /> 
           <div id="page-wrapper">
            <div class="row">
                <div id="employee" class="col-lg-12">
                    <h1 class="page-header">Employee</h1>                 
                   
                   
<form role="form" class='form-horizontal'> <!--- Inline Form Layout --->
 <div class="margin_add   .control-label">     
  <div class="row">
  
    <!-- section 1 begins -->
	<div class="col-xs-12 col-md-6">
 <!-- left Column nested 2 rows -->
            <div class="row">  <!--- patient column 1 row 1--->
                <div class="col-xs-12">


						<div class = "panel panel-primary mypanel">
                        <div class = "panel-heading">
                           <h3 class = "panel-title">Employee</h3>
                        </div>
                        <div class = "panel-body"> <!---This is a Basic panel--->                         
					    <div class="form-group">
							     <div class="text-muted small col-xs-12">Name<hr class="about-border"></div>								
                                 <div class="col-xs-3">
								 <div class="input-group">
											<select class="form-control" id="sel1" title="please fill out this field">
											<option value="" selected disabled class="text-hide">Title</option>
											<option>Miss</option>
											  <option>Mr</option>
											  <option>Mrs</option>
											  <option>Ms</option>											  
											</select>
											<span class="input-group-addon "  style="height: 18px; padding: 0 4px; margin: 0; background-color: white; color:red;">*</span>
									 </div> 
                                 </div> 
                                 <div class="col-xs-5">
									<div class="input-group">

										<input type="text" class="form-control" id="lastname" placeholder="Last Name"  required>
										<span class="input-group-addon"  style="height: 18px; padding: 0 4px; margin: 0;">*</span>
									 </div> 
                                 </div>    
                                 <div class="col-xs-4">
                                    <input type="text" class="form-control" id="middlename" placeholder="Middle Name" required>
                                 </div>  								 
                              </div>

                              <div class="form-group">
                                
                              	 <div class="col-xs-5">
                                    <input type="text" class="form-control" id="firstname" placeholder="First Name" required>
                                 </div>    
                              </div>

                             
                              <div class="form-group">
							 <!--- <div class="text-muted small col-xs-12"><p>Birth Details</p></div>--->
							 <div class="text-muted small col-xs-12">Birth Details<hr class="about-border"></div>

								<div class="col-xs-3">
								<div class='input-group date ' id='datetimepicker1'>
									<input type='text' class="form-control" />
									<span class="input-group-addon">
										<span class="glyphicon glyphicon-calendar">
										</span>
									</span>
								</div>
                                 </div>


								<div class="col-xs-5"> 
                                    <input type="text" class="form-control" id="ssn" placeholder="SSN" required>
                                 </div>
								
								<div class="col-xs-4">
									<input type="text" class="form-control" id="gender" placeholder="Gender" required>
                                 </div>
                              </div>
                              
                               <div class="form-group">                                 
                                 <div class="col-xs-3">
                                    <input type="text" class="form-control" id="maritalstatus" placeholder="Marital status" required>
                                 </div>
									</div>

                              <div class="form-group">
                              <div class="text-muted small col-xs-12">Language<hr class="about-border"></div>
								<div class="col-xs-4">
									<input type="text" class="form-control" id="language" placeholder="Language" required>
                                 </div>
                              </div>                  
                        </div><!--- panel body end --->                        
                     </div><!--- panel primary end  --->


				</div>
      
                           
    <!-- section 1 begins -->
    <div class="col-xs-12">
						<div class = "panel panel-primary mypanel">
                           <div class = "panel-heading">
                              <h3 class = "panel-title">Home Address</h3>
                           </div>
                           <div class = "panel-body">
                              <!---This is a Basic panel--->
                              
                                 <div class="form-group">
                           <div class="col-xs-4">
                              <input type="text" class="form-control" id="street1" placeholder="Street 1" required>
                           </div>
                           <div class="col-xs-4">
                              <input type="text" class="form-control" id="street2" placeholder="Street 2" required>
                           </div>
                           <div class="col-xs-4">
                              <input type="text" class="form-control" id="city" placeholder="City" required>
                           </div>
                        </div>
                        <div class="form-group">
                           <div class="col-xs-4">
                              <input type="text" class="form-control" id="state" placeholder="State" required>
                           </div>
                           <div class="col-xs-4">
                              <input type="text" class="form-control" id="zip" placeholder="Zip" required>
                           </div>
                           <div class="col-xs-4">
                              <input type="text" class="form-control" id="country" placeholder="Country" required>
                           </div>
                        </div>
	</div>	</div>	</div>		
                          
    <!-- section 1 begins -->
	 <div class="col-xs-12">

					<div class = "panel panel-primary mypanel">
                           <div class = "panel-heading">
                              <h3 class = "panel-title">Contact Information</h3>
                           </div>
                           <div class = "panel-body">
                              <!---This is a Basic panel--->
							
                           <div class="form-group">
                              <div class="col-xs-4">
                                 <input type="text" class="form-control" id="home" placeholder="Home" required>
                              </div>
                              <div class="col-xs-4">
                                 <input type="text" class="form-control" id="mobile" placeholder="Mobile" required>
                              </div>
                             <div class="col-xs-4">
                                 <input type="text" class="form-control" id="phone" placeholder="Phone" required>
                              </div>
                           </div>
                              <div class="form-group">
                              <div class="col-xs-4">
                                 <input type="text" class="form-control" id="email" placeholder="Email" required>
                              </div>
                           </div>     
                        </div> <!--- panel body end --->                        
                     </div> <!--- panel primary end  --->

	 </div></div>
    <!-- section 1 ends -->

    <!-- section 1 begins -->
<!---    <div class="col-xs-12 col-md-6">					
	</div> --->
    <!-- section 1 ends -->
  
</div>
    </div></div>
	</form>                                  
						   </div> <!--- panel body end --->                          
                     </div> <!--- panel primary end  --->

	</div>
    <!-- section 1 ends -->
                   
                </div>         
    <div id="dashboard" class="tab-pane fade">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="customer" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="report" class="tab-pane fade">
    <h1>Welcome to report page</h1>
       </div>

        </div>   
</div>

        <!-- /#page-wrapper -->

    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="static/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="static/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="static/vendor/raphael/raphael.min.js"></script>
    <script src="static/vendor/morrisjs/morris.min.js"></script>
    <script src="static/data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="static/dist/js/sb-admin-2.js"></script>

</body>

</html>
