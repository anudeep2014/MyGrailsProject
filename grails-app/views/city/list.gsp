
<%@ page import="com.org.City" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'city.label', default: 'City')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<!--<a href="#list-city" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>-->
                <div class="container">
                    <ul class="breadcrumb">
                     <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		     <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                   </ul>               
                </div>                
		<div id="list-city" class="content scaffold-list" role="main">
			
			
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
					
						<th><g:message code="city.country.label" default="Country" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'city.name.label', default: 'Name')}" />
					
						<th><g:message code="city.state.label" default="State" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cityInstanceList}" status="i" var="cityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cityInstance.id}">${fieldValue(bean: cityInstance, field: "country")}</g:link></td>
					
						<td>${fieldValue(bean: cityInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: cityInstance, field: "state")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
                         <div class="pagination">
				<g:paginate total="${cityInstanceTotal}" />
			</div>
                                </div>
                            </div>
                        </div>

			
			
		</div>
	</body>
</html>
