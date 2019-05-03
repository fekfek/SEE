<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<link rel='stylesheet' href='webjars/bootstrap/3.3.7/css/bootstrap.min.css'>

<body>
    <jsp:include page="../views/fragments/navbar.jsp" />
    
    <div align="center">
        <span class="badge"><h3>Please Update the Information</h3></span>
    </div>
    <br>

    <div class="container">

        <spring:url value="/submitvolunteer" var="submitVolunteerUrl" />
        
        <form:form class="form-horizontal" method="post"
            modelAttribute="updateMe" action="${submitVolunteerUrl}">

            <form:hidden path="id" />

            <spring:bind path="vname">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">Volunteer Name</label>
                    <div class="col-sm-6">
                        <form:input path="vname" type="text" class="form-control "
                            id="vname" placeholder="please enter your Name" />
                        <form:errors path="vname" class="control-label" />
                    </div>
                </div>
            </spring:bind>

            <spring:bind path="gender">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">Gender</label>
                    <div class="col-sm-6">
                        <form:input path="gender" class="form-control" id="gender"
                            placeholder="Please Enter a Valid Email" />
                        <form:errors path="gender" class="control-label" />
                    </div>
                </div>
            </spring:bind>
            
            <spring:bind path="email">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-4">
                        <form:input path="email" class="form-control" id="state"
                             placeholder="please enter your phone Email" />
                        <form:errors path="email" class="control-label" />
                    </div>
                </div>
            </spring:bind>

            <spring:bind path="city">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">City</label>
                    <div class="col-sm-4">
                        <form:input path="city" class="form-control" id="city"
                             placeholder="please enter your phone number" />
                        <form:errors path="city" class="control-label" />
                    </div>
                </div>
            </spring:bind>

            <spring:bind path="remark">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <label class="col-sm-2 control-label">Remark</label>
                    <div class="col-sm-10">
                        <form:textarea path="remark" rows="5"
                         	class="form-control" id="address" placeholder="please add your remarks"/>
                        <form:errors path="remark" class="control-label" />
                    </div>
                </div>
            </spring:bind>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">

       <!--  <button type="submit" class="btn-lg btn-primary btn-block">Add/Update</button> -->
       <!--  <button type="submit" class="btn-lg btn-primary pull-right">Add/Update</button> -->
			 <button type="submit" class="btn-lg btn-primary pull-left">Add/Update</button> 
       <!--	 <button type="submit" class="btn-lg btn-primary pull-center">Add/Update</button> -->
											
                </div>
          	</div>
       </form:form>
   
    <spring:url value="/apply" var="applyUrl" />
   <form:form class="form-horizontal" method="get"
            modelAttribute="anyname" action="${applyUrl}">
    
			<div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
         			<button type="submit" class="btn-lg btn-default btn-left">Reset</button> 
				</div>
            </div>
        </form:form>
    
   </div> 
    

  
    
<!-- 	<script type="text/javascript" src="webjars/jquery/1.11.1/jquery.min.js"></script> -->
<!-- 	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
    
    <%-- <jsp:include page="../views/fragments/footer.jsp" /> --%>
</body>
</html>