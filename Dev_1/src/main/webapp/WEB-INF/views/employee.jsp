<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="balaji">

    <title>Employee</title>
<style>

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
           <div id="page-wrapper">
           <div class="container">
            <%--  <div id="searchpanel" style="" class="col-lg-1">
             <ul>
             <c:forEach items="${employees}" var="username" varStatus="counter">
  
     <li>   <input type="button" name="employee[${counter.index}].employeeid" value="${username.employeeid}" /></li>
    </c:forEach>
 
             </ul>
             </div> --%>
             
             <div class="col-lg-1">
                        <ul class="list-group">
   
   <c:forEach items="${employees}" var="username" varStatus="counter">
 <li> <a href="#" class="list-group-item">${username.employeeid}</a></li>
   
    </c:forEach>
  </ul>
</div>
            
            
             
             
             
                <div id="employeepanel" class="col-lg-11">
                    <h3 class="page-header">Employee</h3>                 
   <div class="generic-container">
	 	<form:form method="POST" modelAttribute="employee" class="form-horizontal">
			<form:input type="hidden" path="id" id="id"/>
			
			<div class="row">
				<div class="col-md-12">
					<div class = "panel panel-primary mypanel">
                        <div class = "panel-heading">
                           <h3 class = "panel-title">Personal Info</h3>
                        </div>
                        <div class = "panel-body"> <!---This is a Basic panel--->   
                        <div class="form-group">                       
                             <div class="col-xs-3">                             
								<span>Title</span>
								<div class="input-group">
										<form:select path="title" class="form-control" id="title" title="please fill out this field">
											<option value="" selected disabled class="text-hide">Title</option>
											<option>Miss</option>
									        <option>Mr</option>
											<option>Mrs</option>
										    <option>Ms</option>		
										</form:select>
								 <span class="input-group-addon "  style="height: 10px; padding: 0 4px; margin: 0; background-color: white; color:red;">*</span>
								</div> 
                           </div>  
                                 
                    <div class="col-xs-5">
                        <span>Last Name</span>
						<div class="input-group">
							<form:input type="text" path="lastName" id="lastName" class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="lastName" class="help-inline"/>
							</div>
							<span class="input-group-addon"  style="height: 18px; padding: 0 4px; margin: 0;color:red;">*</span>
						</div> 
                    </div> 
                     <div class="col-xs-4">
                        <span>First Name</span>
						<div class="input-group">
							<form:input type="text" path="firstName" id="lastName" class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="firstName" class="help-inline"/>
							</div>
							<span class="input-group-addon"  style="height: 18px; padding: 0 4px; margin: 0;color:red;">*</span>
						</div> 
                    </div>              
                   </div>            
                  <div class="form-group">
                     <div class="col-xs-3">                             
						<span>Middle Name</span>
						<div class="input-group">
							<form:input type="text" path="middle_initial" id="middle_initial" class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="middle_initial" class="help-inline"/>
							</div>
							<span class="input-group-addon"  style="height: 18px; padding: 0 4px; margin: 0;color:red;">*</span>
						</div> 
                 </div>  
                  
                  
                  
                  <div class="col-xs-5">                             
						<span>Birth Date</span>
						<div class='input-group date' id='datetimepicker1'>
							<form:input type='text' path="birthdate" id="birthdate" class="form-control input-sm" />
							<span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar">
							</span>
							</span>
						</div>
				</div>				
				
				 <div class="col-xs-4">                             
						<span>Hire Date</span>
						<div class='input-group date' id='datetimepicker1'>
							<form:input type='text' path="emphiredate" id="emphiredate" class="form-control input-sm" />
							<span class="input-group-addon">
							<span class="glyphicon glyphicon-calendar">
							</span>
							</span>
						</div>
				</div>
				      
                   </div>
                   
                    <div class="form-group">
                    
                  
                     <div class="col-xs-3">
                        <span>Gender</span>
						<div class="input-group">
							<form:input type="text" path="gender" id="gender" class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="gender" class="help-inline"/>
							</div>
							<span class="input-group-addon"  style="height: 18px; padding: 0 4px; margin: 0;color:red;">*</span>
						</div> 
                    </div> 
                    
                    <div class="col-xs-5">
                        <span>SSN</span>
						<div class="input-group">
							<form:input type="text" path="ssn" id="ssn" class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="ssn" class="help-inline"/>
							</div>
							<span class="input-group-addon"  style="height: 18px; padding: 0 4px; margin: 0;color:red;">*</span>
						</div> 
                    </div> 
                    
                </div>
                </div>
                </div>           <!-- Personal Body Panel end -->         
				</div>  <!-- Personal Info END -->
			
<%-- 			<!-- Address Info -->
			<div class="col-md-12">
					<div class = "panel panel-primary mypanel">
                        <div class = "panel-heading">
                           <h3 class = "panel-title">Address Info</h3>
                        </div>
                        <div class = "panel-body"> <!---This is a Basic panel--->   
                 <div class="form-group"> 
                    <div class="col-xs-3">
                        <span>Street1</span>
						<div class="input-group">
							<form:input type="text" path="address[0].street1" id="street1" class="form-control input-sm" required />
							<div class="has-error">
								<form:errors path="address[0].street1" class="help-inline"/>
							</div>
							<span class="input-group-addon"  style="height: 18px; padding: 0 4px; margin: 0;color:red;">*</span>
						</div> 
                    </div>   
                    
                     <div class="col-xs-5">
                        <span>Street2</span>
						<div class="input-group">
							<form:input type="text" path="address[0].street2" id="street2" class="form-control input-sm"  />
							<div class="has-error">
								<form:errors path="address[0].street2" class="help-inline"/>
							</div>
						</div> 
                    </div>                     
                    
                     <div class="col-xs-4">
                        <span>Street2</span>
						<div class="input-group">
							<form:input type="text" path="address[0].city" id="city" class="form-control input-sm"  />
							<div class="has-error">
								<form:errors path="address[0].city" class="help-inline"/>
							</div>
						</div> 
                    </div>
                </div>
                
               <div class="form-group"> 
               		<div class="col-xs-3">
                        <span>State</span>
						<div class="input-group">
							<form:input type="text" path="address[0].state" id="state" class="form-control input-sm" required />
							<div class="has-error">
								<form:errors path="address[0].state" class="help-inline"/>
							</div>	
						</div> 
                    </div>   
                    
                     <div class="col-xs-5">
                        <span>Zip</span>
						<div class="input-group">
							<form:input type="text" path="address[0].zip" id="zip" class="form-control input-sm"  />
							<div class="has-error">
								<form:errors path="address[0].zip" class="help-inline"/>
							</div>
						</div> 
                    </div>                     
				</div>               
                
                </div> 
              </div> <!-- Address Info End -->
	</div> --%>
	<div class="col-md-12">
					<div class = "panel panel-primary mypanel">
                        <div class = "panel-heading">
                           <h3 class = "panel-title">Credential Info</h3>
                        </div>
                        <div class = "panel-body"> <!---This is a Basic panel--->   
                 <div class="form-group"> 
                   
	   <div class="col-xs-3">
                        <span>Primary Email</span>
						<div class="input-group">
							<form:input type="text" path="email" id="email" class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="email" class="help-inline"/>
							</div>
							<span class="input-group-addon"  style="height: 18px; padding: 0 4px; margin: 0;color:red;">*</span>
						</div> 
                    </div> 
	
	
                     <div class="col-xs-5">
                        <span>Password</span>
						<div class="input-group">
							<form:input type="password" path="password" id="password" class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="password" class="help-inline"/>
							</div>
							<span class="input-group-addon"  style="height: 18px; padding: 0 4px; margin: 0;color:red;">*</span>
						</div> 
                    </div> 
                 
 <div class="col-xs-4">
 
 <span>Roles</span>
						<div class="input-group">
							<form:select path="employeeProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="employeeProfiles" class="help-inline"/>
						</div>
							</div> 
			
					
				</div>
                 
                 </div></div></div></div>

			</div>
		</form:form>
	</div>                
                   
                                 
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
