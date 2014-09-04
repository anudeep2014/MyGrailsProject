<%@ page import="com.org.State" %>



<div class="form-group ${hasErrors(bean: stateInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="state.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="country" name="country.id" from="${com.org.Country.list()}" optionKey="id" required="" value="${stateInstance?.country?.id}" class="form-control many-to-one"/>
</div>

<div class="form-group ${hasErrors(bean: stateInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="state.name.label" default="Name" />
		
	</label>
	<g:textField class="form-control" name="name" value="${stateInstance?.name}"/>
</div>

