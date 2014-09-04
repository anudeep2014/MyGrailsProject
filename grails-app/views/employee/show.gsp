
<%@ page import="com.org.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<!--<a href="#show-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>-->
                 <div class="container">
                    <ul class="breadcrumb">
                        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                   </ul>               
                </div>                
		<div id="show-employee" class="content scaffold-show" role="main">			
			
                        <div class="container">
                                    <g:if test="${flash.message}">                      
                                        <div class="alert alert-success">
                                            <a href="#" class="close" data-dismiss="alert">&times;</a>
                                            <strong>Success!</strong> "${flash.message}"
                                        </div>
                                    </g:if>
                                                     <div class="panel panel-primary">
                                <div class="panel-heading"><g:message code="default.show.label" args="[entityName]" /></div>
                                <div class="panel-body">
                                <ol class="property-list employee">
			
				<g:if test="${employeeInstance?.address}">
				<dl class="fieldcontain">
					<dt><g:message code="employee.address.label" default="Address" /></dt>
					
						<dd><g:link controller="address" action="show" id="${employeeInstance?.address?.id}">${employeeInstance?.address?.encodeAsHTML()}</g:link></dd>
					
				</dl>
				</g:if>
			
				<g:if test="${employeeInstance?.age}">
				<dl class="fieldcontain">
					<dt><g:message code="employee.age.label" default="Age" /></dt>
					
						<dd><g:fieldValue bean="${employeeInstance}" field="age"/></dd>
					
				</dl>
				</g:if>
			
				<g:if test="${employeeInstance?.dob}">
				<dl class="fieldcontain">
					<dt><g:message code="employee.dob.label" default="Dob" /></dt>
					
						<dd><g:formatDate date="${employeeInstance?.dob}" /></dd>
					
				</dl>
				</g:if>
			
				<g:if test="${employeeInstance?.firstName}">
				<dl class="fieldcontain">
					<dt><g:message code="employee.firstName.label" default="First Name" /></dt>
					
						<dd><g:fieldValue bean="${employeeInstance}" field="firstName"/></dd>
					
				</dl>
				</g:if>
			
				<g:if test="${employeeInstance?.lastName}">
				<dl class="fieldcontain">
					<dt><g:message code="employee.lastName.label" default="Last Name" /></dt>
					
						<dd><g:fieldValue bean="${employeeInstance}" field="lastName"/></dd>
					
				</dl>
				</g:if>
			
				<g:if test="${employeeInstance?.middleName}">
				<dl class="fieldcontain">
					<dt><g:message code="employee.middleName.label" default="Middle Name" /></dt>
					
						<dd><g:fieldValue bean="${employeeInstance}" field="middleName"/></dd>
					
				</dl>
				</g:if>
			
			</ol>
                                </div>
                            
                            </div>
                            <g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${employeeInstance?.id}" />
					<g:link class="btn btn-primary edit"  action="edit" id="${employeeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-primary delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
                            </g:form>
                        </div>

			
			
		</div>
	</body>
</html>
