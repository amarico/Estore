package action;

import java.io.UnsupportedEncodingException;

import service.UsersDAO;
import service_impl.UsersDAOImpl;

import com.opensymphony.xwork2.ModelDriven;

import entity.Users;

public class UsersAction extends SuperAction implements ModelDriven<Users> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Users user = new Users();

	// 用户登录动作
	public String login() {

		UsersDAO udao = new UsersDAOImpl();
		if (udao.usersLogin(user)) {
			// 获取登录的用户的信息 但是没有获取成功
			Users users = udao.userDetail(user.getUsername());
			session.setAttribute("username", users.getUsername());
			session.setAttribute("userid", users.getUid());

			return "login_success";
		} else {
			return "login_failure";
		}
	}

	// 用户注册动作
	public String resigster() {

		UsersDAO udao = new UsersDAOImpl();
		if (udao.usersRegister(user)) {
			return "register_success";
		} else {
			return "register_failure";
		}

	}

	// 用户登出动作
	public String logout() {

		session.invalidate();
		return "logout_success";
	}

	// 用户修改邮箱的操作

	public String changeEmail() throws UnsupportedEncodingException {

		
    
		String oldEmail = Request.getParameter("oldEmail");
		String newEmail = Request.getParameter("newEmail");
		
		UsersDAO udao=new UsersDAOImpl();
		udao.changeEmail(newEmail,1);
		return "change_success";

	}
    //修改用户地址的操作
	public String changeAddress() throws UnsupportedEncodingException{
	
		String newAddress = Request.getParameter("address");
		System.out.println(newAddress);
		UsersDAO udao=new UsersDAOImpl();
		
		udao.chengAddress(newAddress, 1);
		return "change_success";
		
	}
	// 跳转到修改邮箱操作

	public String toEmail() {
		return "to_email";
	}

	// 跳转到修改地址操作
	public String toAddress() {
		return "to_address";
	}

	public Users getModel() {

		return this.user;
	}

}
