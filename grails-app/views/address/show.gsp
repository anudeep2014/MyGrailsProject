
<%@ page import="com.org.Address" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<!--<a href="#show-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>-->
                 <div class="container">
                    <ul class="breadcrumb">
                        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                   </ul>               
                </div>                
		<div id="show-address" class="content scaffold-show" role="main">			
			
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
                                <ol class="property-list address">
			
				<g:if test="${addressInstance?.city}">
				<dl class="fieldcontain">
					<dt><g:message code="address.city.label" default="City" /></dt>
					
						<dd><g:link controller="city" action="show" id="${addressInstance?.city?.id}">${addressInstance?.city?.encodeAsHTML()}</g:link></dd>
					
				</dl>
				</g:if>
			
				<g:if test="${addressInstance?.country}">
				<dl class="fieldcontain">
					<dt><g:message code="address.country.label" default="Country" /></dt>
					
						<dd><g:link controller="country" action="show" id="${addressInstance?.country?.id}">${addressInstance?.country?.encodeAsHTML()}</g:link></dd>
					
				</dl>
				</g:if>
			
				<g:if test="${addressInstance?.line1}">
				<dl class="fieldcontain">
					<dt><g:message code="address.line1.label" default="Line1" /></dt>
					
						<dd><g:fieldValue bean="${addressInstance}" field="line1"/></dd>
					
				</dl>
				</g:if>
			
				<g:if test="${addressInstance?.line2}">
				<dl class="fieldcontain">
					<dt><g:message code="address.line2.label" default="Line2" /></dt>
					
						<dd><g:fieldValue bean="${addressInstance}" field="line2"/></dd>
					
				</dl>
				</g:if>
			
				<g:if test="${addressInstance?.pincode}">
				<dl class="fieldcontain">
					<dt><g:message code="address.pincode.label" default="Pincode" /></dt>
					
						<dd><g:fieldValue bean="${addressInstance}" field="pincode"/></dd>
					
				</dl>
				</g:if>
			
				<g:if test="${addressInstance?.state}">
				<dl class="fieldcontain">
					<dt><g:message code="address.state.label" default="State" /></dt>
					
						<dd><g:link controller="state" action="show" id="${addressInstance?.state?.id}">${addressInstance?.state?.encodeAsHTML()}</g:link></dd>
					
				</dl>
				</g:if>
			
			</ol>
                                </div>
                            
                            </div>
                            <g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${addressInstance?.id}" />
					<g:link class="btn btn-primary edit"  action="edit" id="${addressInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-primary delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
                            </g:form>
                        </div>

			
			
		</div>
	</body>
</html>
