<%@ page import="com.org.Address" %>



<div class="form-group ${hasErrors(bean: addressInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="address.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="city" name="city.id" from="${com.org.City.list()}" optionKey="id" required="" value="${addressInstance?.city?.id}" class="form-control many-to-one"/>
</div>

<div class="form-group ${hasErrors(bean: addressInstance, field: 'country', 'error')} required">
	<label for="country">
		<g:message code="address.country.label" default="Country" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="country" name="country.id" from="${com.org.Country.list()}" optionKey="id" required="" value="${addressInstance?.country?.id}" class="form-control many-to-one"/>
</div>

<div class="form-group ${hasErrors(bean: addressInstance, field: 'line1', 'error')} ">
	<label for="line1">
		<g:message code="address.line1.label" default="Line1" />
		
	</label>
	<g:textField class="form-control" name="line1" value="${addressInstance?.line1}"/>
</div>

<div class="form-group ${hasErrors(bean: addressInstance, field: 'line2', 'error')} ">
	<label for="line2">
		<g:message code="address.line2.label" default="Line2" />
		
	</label>
	<g:textField class="form-control" name="line2" value="${addressInstance?.line2}"/>
</div>

<div class="form-group ${hasErrors(bean: addressInstance, field: 'pincode', 'error')} required">
	<label for="pincode">
		<g:message code="address.pincode.label" default="Pincode" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="pincode" type="number" value="${addressInstance.pincode}" required=""/>
</div>

<div class="form-group ${hasErrors(bean: addressInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="address.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="state" name="state.id" from="${com.org.State.list()}" optionKey="id" required="" value="${addressInstance?.state?.id}" class="form-control many-to-one"/>
</div>

