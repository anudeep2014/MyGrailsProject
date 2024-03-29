
<%@ page import="com.org.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<!--<a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>-->
                <div class="container">
                    <ul class="breadcrumb">
                     <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		     <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                   </ul>               
                </div>                
		<div id="list-employee" class="content scaffold-list" role="main">
			
			
                        <div class="container">
                                <g:if test="${flash.message}">                      
                                                <div class="alert alert-success">
                                                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                                                    <strong>Success!</strong> "${flash.message}"
                                                </div>
                                </g:if>        
                                                     <div class="panel panel-primary">
                                <div class="panel-heading"><g:message code="default.list.label" args="[entityName]" /></div>
                                <div class="panel-body">
                                    <table class="table  ">
				<thead>
					<tr>
					
						<th><g:message code="employee.address.label" default="Address" /></th>
					
						<g:sortableColumn property="age" title="${message(code: 'employee.age.label', default: 'Age')}" />
					
						<g:sortableColumn property="dob" title="${message(code: 'employee.dob.label', default: 'Dob')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'employee.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'employee.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="middleName" title="${message(code: 'employee.middleName.label', default: 'Middle Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: employeeInstance, field: "age")}</td>
					
						<td><g:formatDate date="${employeeInstance.dob}" /></td>
					
						<td>${fieldValue(bean: employeeInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "middleName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
                         <div class="pagination">
				<g:paginate total="${employeeInstanceTotal}" />
			</div>
                                </div>
                            </div>
                        </div>

			
			
		</div>
	</body>
</html>
