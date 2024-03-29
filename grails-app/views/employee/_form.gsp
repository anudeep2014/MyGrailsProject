<%@ page import="com.org.Employee" %>



<div class="form-group ${hasErrors(bean: employeeInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="employee.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="address" name="address.id" from="${com.org.Address.list()}" optionKey="id" required="" value="${employeeInstance?.address?.id}" class="form-control many-to-one"/>
</div>

<div class="form-group ${hasErrors(bean: employeeInstance, field: 'age', 'error')} required">
	<label for="age">
		<g:message code="employee.age.label" default="Age" />
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control" name="age" type="number" value="${employeeInstance.age}" required=""/>
</div>

<div class="form-group ${hasErrors(bean: employeeInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="employee.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker class='form-control' name="dob" precision="day"  value="${employeeInstance?.dob}"  />
</div>

<div class="form-group ${hasErrors(bean: employeeInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="employee.firstName.label" default="First Name" />
		
	</label>
	<g:textField class="form-control" name="firstName" value="${employeeInstance?.firstName}"/>
</div>

<div class="form-group ${hasErrors(bean: employeeInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="employee.lastName.label" default="Last Name" />
		
	</label>
	<g:textField class="form-control" name="lastName" value="${employeeInstance?.lastName}"/>
</div>

<div class="form-group ${hasErrors(bean: employeeInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="employee.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField class="form-control" name="middleName" value="${employeeInstance?.middleName}"/>
</div>

