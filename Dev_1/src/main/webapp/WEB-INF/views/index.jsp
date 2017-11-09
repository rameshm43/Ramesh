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


</style>
</head>

<body>

    <div id="wrapper">
  <jsp:include page="includeHeaders.jsp" />  
    <jsp:include page="includeTabs.jsp" />  
  <div class="tab-content">
    <div id="admin" class="tab-pane fade">        
            <jsp:include page="Include_Admin_Sidemenu.jsp" />  
           <div id="page-wrapper">
            <div class="row">
            <div id="branch" class="col-lg-12">
                    <h1 class="page-header">Branch</h1>
                </div>
                <div id="employee" class="col-lg-12">
                    <h1 class="page-header">Employee</h1>
                </div>
            </div>
          
            </div>  </div>
    <div id="dashboard" class="tab-pane fade in active">
      <h3>Menu 1</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="customer" class="tab-pane fade">
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="report" class="tab-pane fade">
       <jsp:include page="includeHeaders.jsp" />  
    <jsp:include page="includeTabs.jsp" />   </div>

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
