<%@ page import="com.org.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<!--<a href="#edit-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>-->
	    <div class="container">
                 <ul class="breadcrumb">
                    <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                    <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>               
            </div>	
            
		<div id="edit-employee" class="content scaffold-edit" role="main">				
			<g:hasErrors bean="${employeeInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${employeeInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
                        <div class="container">
                          <g:if test="${flash.message}">                      
                                        <div class="alert alert-success">
                                            <a href="#" class="close" data-dismiss="alert">&times;</a>
                                            <strong>Success!</strong> "${flash.message}"
                                        </div>
                          </g:if>
                        <div class="panel panel-primary">
                            <div class="panel-heading"><g:message code="default.edit.label" args="[entityName]" /></div>
                            <div class="panel-body">
                                <g:form method="post" >
                                    <g:hiddenField name="id" value="${employeeInstance?.id}" />
                                    <g:hiddenField name="version" value="${employeeInstance?.version}" />
                                    <fieldset class="form">
                                            <g:render template="form"/>
                                    </fieldset>
                                    <fieldset class="buttons">
                                            <g:actionSubmit class="btn btn-primary"  action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                                            <g:actionSubmit class="btn btn-primary"  action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                    </fieldset>
                                </g:form>
                            </div>
                        </div>
                         
                        </div>
			
		</div>
	</body>
</html>
