<% import grails.persistence.Event %>
<%=packageName%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<!--<a href="#show-${domainClass.propertyName}" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>-->
                 <div class="container">
                    <ul class="breadcrumb">
                        <li><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                   </ul>               
                </div>                
		<div id="show-${domainClass.propertyName}" class="content scaffold-show" role="main">			
			
                        <div class="container">
                                    <g:if test="\${flash.message}">                      
                                        <div class="alert alert-success">
                                            <a href="#" class="close" data-dismiss="alert">&times;</a>
                                            <strong>Success!</strong> "\${flash.message}"
                                        </div>
                                    </g:if>
                                                     <div class="panel panel-primary">
                                <div class="panel-heading"><g:message code="default.show.label" args="[entityName]" /></div>
                                <div class="panel-body">
                                <ol class="property-list ${domainClass.propertyName}">
			<%  excludedProps = Event.allEvents.toList() << 'id' << 'version'
				allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
				props = domainClass.properties.findAll { allowedNames.contains(it.name) && !excludedProps.contains(it.name) }
				Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
				props.each { p -> %>
				<g:if test="\${${propertyName}?.${p.name}}">
				<dl class="fieldcontain">
					<dt><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}" /></dt>
					<%  if (p.isEnum()) { %>
						<dd><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></dd>
					<%  } else if (p.oneToMany || p.manyToMany) { %>
						<g:each in="\${${propertyName}.${p.name}}" var="${p.name[0]}">
						<dd><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${p.name[0]}.id}">\${${p.name[0]}?.encodeAsHTML()}</g:link></dd>
						</g:each>
					<%  } else if (p.manyToOne || p.oneToOne) { %>
						<dd><g:link controller="${p.referencedDomainClass?.propertyName}" action="show" id="\${${propertyName}?.${p.name}?.id}">\${${propertyName}?.${p.name}?.encodeAsHTML()}</g:link></dd>
					<%  } else if (p.type == Boolean || p.type == boolean) { %>
						<dd><g:formatBoolean boolean="\${${propertyName}?.${p.name}}" /></dd>
					<%  } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
						<dd><g:formatDate date="\${${propertyName}?.${p.name}}" /></dd>
					<%  } else if(!p.type.isArray()) { %>
						<dd><g:fieldValue bean="\${${propertyName}}" field="${p.name}"/></dd>
					<%  } %>
				</dl>
				</g:if>
			<%  } %>
			</ol>
                                </div>
                            
                            </div>
                            <g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="\${${propertyName}?.id}" />
					<g:link class="btn btn-primary edit"  action="edit" id="\${${propertyName}?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-primary delete" action="delete" value="\${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('\${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
                            </g:form>
                        </div>

			
			
		</div>
	</body>
</html>
