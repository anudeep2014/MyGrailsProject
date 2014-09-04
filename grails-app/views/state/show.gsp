
<%@ page import="com.org.State" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'state.label', default: 'State')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<!--<a href="#show-state" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>-->
                 <div class="container">
                    <ul class="breadcrumb">
                        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                   </ul>               
                </div>                
		<div id="show-state" class="content scaffold-show" role="main">			
			
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
                                <ol class="property-list state">
			
				<g:if test="${stateInstance?.country}">
				<dl class="fieldcontain">
					<dt><g:message code="state.country.label" default="Country" /></dt>
					
						<dd><g:link controller="country" action="show" id="${stateInstance?.country?.id}">${stateInstance?.country?.encodeAsHTML()}</g:link></dd>
					
				</dl>
				</g:if>
			
				<g:if test="${stateInstance?.name}">
				<dl class="fieldcontain">
					<dt><g:message code="state.name.label" default="Name" /></dt>
					
						<dd><g:fieldValue bean="${stateInstance}" field="name"/></dd>
					
				</dl>
				</g:if>
			
			</ol>
                                </div>
                            
                            </div>
                            <g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${stateInstance?.id}" />
					<g:link class="btn btn-primary edit"  action="edit" id="${stateInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-primary delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
                            </g:form>
                        </div>

			
			
		</div>
	</body>
</html>
