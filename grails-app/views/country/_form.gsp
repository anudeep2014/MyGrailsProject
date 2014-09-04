<%@ page import="com.org.Country" %>



<div class="form-group ${hasErrors(bean: countryInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="country.name.label" default="Name" />
		
	</label>
	<g:textField class="form-control" name="name" value="${countryInstance?.name}"/>
</div>

