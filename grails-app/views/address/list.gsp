
<%@ page import="com.org.Address" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-address" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="address.city.label" default="City" /></th>
					
						<th><g:message code="address.country.label" default="Country" /></th>
					
						<g:sortableColumn property="line1" title="${message(code: 'address.line1.label', default: 'Line1')}" />
					
						<g:sortableColumn property="line2" title="${message(code: 'address.line2.label', default: 'Line2')}" />
					
						<g:sortableColumn property="pincode" title="${message(code: 'address.pincode.label', default: 'Pincode')}" />
					
						<th><g:message code="address.state.label" default="State" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${addressInstanceList}" status="i" var="addressInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${addressInstance.id}">${fieldValue(bean: addressInstance, field: "city")}</g:link></td>
					
						<td>${fieldValue(bean: addressInstance, field: "country")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "line1")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "line2")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "pincode")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "state")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${addressInstanceTotal}" />
			</div>
		</div>
	</body>
</html>