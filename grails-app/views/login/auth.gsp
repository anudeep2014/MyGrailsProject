<html>
    <head>
        <meta name='layout' content='main'/>
        <title><g:message code="springSecurity.login.title"/></title>
    </head>

    <body>
        <div id='login'>
            <div class='inner'>
                    <!--<div class='fheader'><g:message code="springSecurity.login.header"/></div>-->

                <g:if test='${flash.message}'>                  
                    <div class="alert alert-danger fade in">
                        <button type="button" class="close">×</button>
                        <strong>${flash.message}</storng>
                    </div>
                </g:if>
                <div class="bs-example">
                    <form action='${postUrl}' method='POST' id='loginForm'  autocomplete='off'>
                        <div class="form-group">
                            <label for="inputEmail">Username</label>
                            <input type="text" name='j_username' class="form-control" id="inputEmail" placeholder="Username">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword">Password</label>
                            <input type="password" class="form-control" name='j_password' id="inputPassword" placeholder="Password">
                        </div>
                        <div class="checkbox">
                            <label><input type="checkbox" name='${rememberMeParameter}'><g:message code="springSecurity.login.remember.me.label"/></label>           				
                        </div>
                        <button type="submit" class="btn btn-primary">Login</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
