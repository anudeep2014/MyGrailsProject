<%@ page import="com.org.State" %>



<div class="fieldcontain ${hasErrors(bean: stateInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="state.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="country" name="country.id" from="${com.org.Country.list()}" optionKey="id" required="" value="${stateInstance?.country?.id}" class="many-to-one" noSelection="['':'']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stateInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="state.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${stateInstance?.name}"/>
</div>

