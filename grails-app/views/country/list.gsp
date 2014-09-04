
<%@ page import="com.org.Country" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'country.label', default: 'Country')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<!--<a href="#list-country" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>-->
                <div class="container">
                    <ul class="breadcrumb">
                     <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		     <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                   </ul>               
                </div>                
		<div id="list-country" class="content scaffold-list" role="main">
			
			
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
					
						<g:sortableColumn property="name" title="${message(code: 'country.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${countryInstanceList}" status="i" var="countryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${countryInstance.id}">${fieldValue(bean: countryInstance, field: "name")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
                         <div class="pagination">
				<g:paginate total="${countryInstanceTotal}" />
			</div>
                                </div>
                            </div>
                        </div>

			
			
		</div>
	</body>
</html>
