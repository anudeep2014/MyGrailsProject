import com.auth.*
class BootStrap {

    def init = { servletContext ->
        def userInstance=new User(username:'admin',password:'admin',enabled:true).save(flush:true)
        def userInstance1=new User(username:'user',password:'user',enabled:true).save(flush:true)
        def adminRoleInstance=new Role(authority:'ROLE_ADMIN').save(flush:true)
        def normalRoleInstance=new Role(authority:'ROLE_USER').save(flush:true)
        def userRoleInstance=new UserRole(user:userInstance,role:adminRoleInstance).save(flush:true)
        def RoleInstance=new UserRole(user:userInstance1,role:normalRoleInstance).save(flush:true)
    }
    def destroy = {
    }
}
