<%@ page import="com.org.City" %>



<div class="form-group ${hasErrors(bean: cityInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="city.name.label" default="Name" />
		
	</label>
	<g:textField class="form-control" name="name" value="${cityInstance?.name}"/>
</div>

<div class="form-group ${hasErrors(bean: cityInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="city.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="state" name="state.id" from="${com.org.State.list()}" optionKey="id" required="" value="${cityInstance?.state?.id}" class="form-control many-to-one"/>
</div>

