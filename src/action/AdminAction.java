package action;

import service.AdminDAO;
import service_impl.AdminDAOImpl;

import com.opensymphony.xwork2.ModelDriven;

import entity.Admin;

public class AdminAction extends SuperAction implements ModelDriven<Admin> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Admin admin = new Admin();
 //用户登录动作
	public String login() {

		AdminDAO adao = new AdminDAOImpl();
		if (adao.adminLogin(admin)) {

			// 用户登录成功后
			Admin readmin = adao.adminDetail(admin);
			session.setAttribute("adminName", readmin.getAdminName());
			session.setAttribute("adminId", readmin.getAid());

			return "login_success";
		} else {
			return "login_faile";
		}

	}
	public Admin getModel() {
		// TODO Auto-generated method stub
		return this.admin;
	}

}
