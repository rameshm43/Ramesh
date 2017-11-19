<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="balaji">

    <title>Employee</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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

@media (min-width: 1200px){
.col-lg-1 {
    width: 10%;
}

.col-lg-2 {
    width: 10%;
}

.col-lg-10 {
    width: 80%;
}
}
.outerbox_heading {
	border:0px solid #626363;
	padding:5px 2px 10px 2px;
	overflow:hidden;
	margin-top:0px;
	text-align:center;
	font-family:Verdana;
	font-size:21px;
	color:#626363;
	font-weight:bold;
	letter-spacing:1px;
	padding-left:0%;
}
.outerbox_heading_font {
	font-family:Verdana;
	font-size:16px;
	color:#626363;
	font-weight:bold;
	letter-spacing:1px;
	text-align:center;
	line-height:0px;
	padding-left:0%;
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
        
       
        <div class="container-fluid">  
             <div class="row"> 
             <div class="col-xs-6 col-sm-2"></div>            
                <div class="col-xs-6 col-sm-2">
    				<br><div class="form-group has-feedback">
    				<input class="form-control" id="myInput" type="text"  class="glyphicon glyphicon-search" placeholder="Search.."> 
    				<i class="glyphicon glyphicon-search form-control-feedback"></i></div>
    				
   					 <ul class="list-group" id="myList" style="list-style-type: none;">    
      				 <c:forEach items="${employees}" var="username" varStatus="counter">
					 <li class="list-group-item"> <a href="<c:url value='/browse-employee-${username.employeeid}' />" >${username.employeeid}</a></li>   
  					  </c:forEach>
    				</ul>
    				</div>
            <div class="clearfix visible-xs"></div>
            <div class="col-xs-6 col-sm-8">
    			<div align="right"><a class="btn btn-default" href="<c:url value='/newuser' />"><i class="fa fa-user-plus"></i>&nbsp;Add Employee</a>
		 	</div></div>
             <c:choose>
						<c:when test="${create||edit}">
    			<div class="col-xs-6 col-sm-8">
    			
		 	<div class="outerbox_heading"><span class="outerbox_heading_font"><sec:authorize access="hasRole('ADMIN')"></sec:authorize>Employee</span></div>
                   
                     
	 				<form:form method="POST" modelAttribute="employee" class="form-horizontal">
						<form:input type="hidden" path="id" id="id"/>
			
					<div class="row">
					<c:if test="${success}">
					<div class="alert alert-success lead">
	    	${success}
		</div></c:if>
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
										    <c:choose>
    										<c:when test="${employee.title.equals('MISS')}">
    										<option value="MISS" Selected>Miss</option>
       										</c:when>
       										<c:otherwise><option value="MISS">Miss</option></c:otherwise></c:choose>
       										<c:choose>
    										<c:when test="${employee.title.equals('MR')}">
    										 <option value="MR" Selected>Mr</option>
      									    </c:when><c:otherwise> <option value="MR">Mr</option></c:otherwise></c:choose>
      									    <c:choose>
      									    <c:when test="${employee.title.equals('MRS')}">
      									    <option value="MRS" Selected>Mrs</option>
      									    </c:when><c:otherwise><option value="MRS">Mrs</option></c:otherwise></c:choose>
      									    <c:choose>
      									    <c:when test="${employee.title.equals('MS')}">
      									     <option value="MS" Selected>Ms</option>	
      									    </c:when><c:otherwise> <option value="MS">Ms</option></c:otherwise></c:choose>										

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
							<form:input type='date' data-date-format="YYYY-MM-DD" path="birthdate" id="birthdate" class="form-control input-sm" />
					
						</div>
				</div>				
				
				 <div class="col-xs-4">                             
						<span>Hire Date</span>
						<div class='input-group date' id='datetimepicker1'>
							<form:input type='date' data-date-format="YYYY-MM-DD" path="emphiredate" id="emphiredate" class="form-control input-sm" />
							
						</div>
				</div>
				      
                   </div>
                   
                    <div class="form-group">
                     <div class="col-xs-3">
                        <span>Gender</span>
						<div class="input-group">
										<form:select path="gender" class="form-control" id="gender" title="please fill out this field">
											<option value="" selected disabled class="text-hide">Gender</option>
											<c:choose>
    										<c:when test="${employee.gender.equals('MALE')}">
    										<option value="MALE" Selected>Male</option>
       										</c:when>
       										<c:otherwise><option value="MALE">Male</option></c:otherwise></c:choose>
       										<c:choose>
    										<c:when test="${employee.gender.equals('FEMALE')}">
    										 <option value="FEMALE" Selected>Female</option>
      									    </c:when><c:otherwise> <option value="FEMALE">Female</option></c:otherwise></c:choose>
      									    <c:choose>
      									    <c:when test="${employee.gender.equals('UNKNOWN')}">
      									    <option value="UNKNOWN" Selected>Unknown</option>
      									    </c:when><c:otherwise><option value="UNKNOWN">Unknown</option></c:otherwise></c:choose>
      																	
											
										</form:select>
									 <span class="input-group-addon "  style="height: 10px; padding: 0 4px; margin: 0; background-color: white; color:red;">*</span>
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
			
			<!-- Address Info -->
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
							<input type="text" name="street1" value="${street1}" id="street1" class="form-control input-sm" required />
							<%-- <div class="has-error">
								<form:errors path="address.street1" class="help-inline"/>
							</div> --%>
							<span class="input-group-addon"  style="height: 18px; padding: 0 4px; margin: 0;color:red;">*</span>
						</div> 
                    </div>   
                    
                     <div class="col-xs-5">
                        <span>Street2</span>
						<div class="input-group">
							<input type="text" name="street2" value="${street2}" id="street2" class="form-control input-sm"  />
							<%-- <div class="has-error">
								<form:errors path="address.street2" class="help-inline"/>
							</div> --%>
						</div> 
                    </div>                     
                    
                     <div class="col-xs-4">
                        <span>City</span>
						<div class="input-group">
							<input type="text" name="city" value="${city}" id="city" class="form-control input-sm"  />
							<%-- <div class="has-error">
								<form:errors path="address.city" class="help-inline"/>
							</div> --%>
						</div> 
                    </div>
                </div>
                
               <div class="form-group"> 
               		<div class="col-xs-3">
                        <span>State</span>
						<div class="input-group">
							<input type="text" name="state" value="${state}" id="state" class="form-control input-sm" required />
							<%-- <div class="has-error">
								<form:errors path="address.state" class="help-inline"/>
							</div>	 --%>
						</div> 
                    </div>   
                    
                     <div class="col-xs-5">
                        <span>Zip</span>
						<div class="input-group">
							<input type="text" name="zip" value="${zip}" id="zip" class="form-control input-sm"  />
							<%-- <div class="has-error">
								<form:errors path="address.zip" class="help-inline"/>
							</div> --%>
						</div> 
                    </div>                     
				</div>               
                
                </div> 
              </div> <!-- Address Info End -->
	</div> 
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
                 
                 </div>
                 
                 <div class="form-group"> 
                   
	   				<div class="col-xs-3">
                        <span>EMP ID</span>
						<div class="input-group">
						<c:choose>
						<c:when test="${edit}">
							<input type="text" value="${employee.employeeid}" id="employeeid" class="form-control input-sm" disabled></input>
						</c:when>
						<c:otherwise>
							<form:input type="text" path="employeeid" id="employeeid" class="form-control input-sm" />
						</c:otherwise>
					</c:choose>
					<div class="has-error">
								<form:errors path="employeeid" class="help-inline"/>
							</div>
							<span class="input-group-addon"  style="height: 18px; padding: 0 4px; margin: 0;color:red;">*</span>
						</div> 
                    </div> 
	
	
                     <div class="col-xs-5">
                        <span>User Name</span>
						<div class="input-group">
							<form:input type="text" path="username" id="username" class="form-control input-sm" />
							<div class="has-error">
								<form:errors path="username" class="help-inline"/>
							</div>
							<span class="input-group-addon"  style="height: 18px; padding: 0 4px; margin: 0;color:red;">*</span>
						</div> 
                    </div> 
                    
                    
                    <div class="col-xs-5">
                        <span>User Status</span>
						<div class="input-group">
										<form:select path="userstatus" value="${userstatus}" class="form-control" id="userstatus" title="please fill out this field">															
											<c:choose>
    										<c:when test="${employee.userstatus.equals('ACTIVE')}">
    										<option value="ACTIVE" Selected>Active</option>
       										</c:when>
       										<c:otherwise><option value="ACTIVE">Active</option></c:otherwise></c:choose>
       										<c:choose>
    										<c:when test="${employee.userstatus.equals('INACTIVE')}">
    										 <option value="INACTIVE" Selected>InActive</option>
      									    </c:when><c:otherwise> <option value="INACTIVE">InActive</option></c:otherwise></c:choose>
      									    <c:choose>
      									    <c:when test="${employee.userstatus.equals('INPROCESS')}">
      									    <option value="INPROCESS" Selected>InProcess</option>
      									    </c:when><c:otherwise><option value="INPROCESS">InProcess</option></c:otherwise></c:choose>
										</form:select>
									 <span class="input-group-addon "  style="height: 10px; padding: 0 4px; margin: 0; background-color: white; color:red;">*</span>
					</div> 
                    </div> 

                 
                 </div>
                 
                 
                 
                 
                 </div></div></div>

			</div>
			
			
			 <div class="row">
				<div align="center"> 
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Update" class="btn btn-primary btn-sm"/> 
						</c:when>
						<c:otherwise>
							<input type="submit" value="Save" class="btn btn-primary btn-sm"/>
						</c:otherwise>
					</c:choose>
				</div>
				<br>
			</div>
		</form:form> 
          </div> </c:when></c:choose>     
          
          	<c:choose>
		<c:when test="${browse}">
			<div class="col-xs-6 col-sm-8">
			<div class="outerbox_heading"><span class="outerbox_heading_font"><sec:authorize access="hasRole('ADMIN')"></sec:authorize>Employee</span><c:if test="${success}">
					<div class="alert alert-success lead">
	    	${success}
		</div></c:if></div>
                  
		<div class="row">
				
						<div class="col-md-12">
							<div class = "panel panel-primary mypanel">
                        	<div class = "panel-heading">
                           	<h3 class = "panel-title">Personal Info</h3>
                        	</div>
                        	<div class = "panel-body"> <!---This is a Basic panel--->   
                        	
                        		<dl  class="dl-horizontal">                        		
								<dt>Employee ID</dt><dd>${employee.employeeid}</dd>
								<dt>Title</dt><dd>${employee.title}</dd>
								<dt>First Name</dt><dd>${employee.firstName}</dd>
								<dt>Last Name</dt><dd>${employee.lastName}</dd>
								<dt>Gender</dt><dd>${employee.gender}</dd>
								<dt>BirthDate</dt><dd>${employee.birthdate}</dd>
								<dt>Hire Date</dt><dd>${employee.emphiredate}</dd>
								<dt>SSN</dt><dd>${employee.ssn}</dd>
								<dt>User Status</dt><dd>${employee.userstatus}</dd>
								</dl>
                        	
                        	</div></div>
                        	</div>
                        	<div class="col-md-12">
							<div class = "panel panel-primary mypanel">
                        	<div class = "panel-heading">
                           	<h3 class = "panel-title">Address Info</h3>
                        	</div>
                        	<div class = "panel-body"> <!---This is a Basic panel--->   
                        	
                        		<dl  class="dl-horizontal">                               		
								<dt>Street 1</dt><dd>${employee.address.street1}</dd>
								<dt>Street 2</dt><dd>${employee.address.street1}</dd>
								<dt>City</dt><dd>${employee.address.city}</dd>
								<dt>State</dt><dd>${employee.address.state}</dd>
								<dt>Zip</dt><dd>${employee.address.zip}</dd>
								</dl>
                        	
                        	</div></div></div>
                        	
                        	<div class="col-md-12">
							<div class = "panel panel-primary mypanel">
                        	<div class = "panel-heading">
                           	<h3 class = "panel-title">Credential Info</h3>
                        	</div>
                        	<div class = "panel-body"> <!---This is a Basic panel--->   
                        	
                        		<dl  class="dl-horizontal">                             		
								<dt>Primary Mail</dt><dd>${employee.email}</dd>
								<dt>User Name</dt><dd>${employee.username}</dd>
								<dt>User Status</dt><dd>${employee.userstatus}</dd>
								</dl>
                        	
                        	</div></div><br></div>
                        	
                        	<div align="center"> <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
							<a href="<c:url value='/edit-employee-${employee.employeeid}' />" class="btn btn-success custom-width">edit</a>
				        </sec:authorize></div>
                        	
                        	<br>
                        	</div></div>
		</c:when></c:choose>				
   	</div> <!--- panel body end --->      
   	 </div>    

			
						              
                     </div> <!--- panel primary end  --->

    <!-- section 1 ends -->
                   
    <div id="dashboard" class="tab-pane fade">
      <h3>Menu 1</h3>
      
    </div>
    <div id="customer" class="tab-pane fade">
      <h3>Menu 2</h3>
   
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
<script>
jQuery(document).ready(function($) {
	$("#loadEmployeeid").submit(function(event) {

		// Prevent the form from submitting via the browser.
		event.preventDefault();
		searchViaAjax();

	});
});

function searchAjax() {
	var data = {}
	data["query"] = $("#query").val();

	$.ajax({
		type : "POST",
		contentType : "application/json",
		url : "http://localhost:8083/Dev_1/showallemployee",
		data : JSON.stringify(data),
		dataType : 'json',
		timeout : 100000,
		success : function(data) {
			console.log("SUCCESS: ", data);
			display(data);
		},
		error : function(e) {
			console.log("ERROR: ", e);
			display(e);
		},
		done : function(e) {
			console.log("DONE");
		}
	});
}


$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myList li").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});

</script>
</html>


