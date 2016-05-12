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

	// �û���¼����
	public String login() {

		UsersDAO udao = new UsersDAOImpl();
		if (udao.usersLogin(user)) {
			// ��ȡ��¼���û�����Ϣ ����û�л�ȡ�ɹ�
			Users users = udao.userDetail(user.getUsername());
			session.setAttribute("username", users.getUsername());
			session.setAttribute("userid", users.getUid());

			return "login_success";
		} else {
			return "login_failure";
		}
	}

	// �û�ע�ᶯ��
	public String resigster() {

		UsersDAO udao = new UsersDAOImpl();
		if (udao.usersRegister(user)) {
			return "register_success";
		} else {
			return "register_failure";
		}

	}

	// �û��ǳ�����
	public String logout() {

		session.invalidate();
		return "logout_success";
	}

	// �û��޸�����Ĳ���

	public String changeEmail() throws UnsupportedEncodingException {

		
    
		String oldEmail = Request.getParameter("oldEmail");
		String newEmail = Request.getParameter("newEmail");
		
		UsersDAO udao=new UsersDAOImpl();
		udao.changeEmail(newEmail,1);
		return "change_success";

	}
    //�޸��û���ַ�Ĳ���
	public String changeAddress() throws UnsupportedEncodingException{
	
		String newAddress = Request.getParameter("address");
		System.out.println(newAddress);
		UsersDAO udao=new UsersDAOImpl();
		
		udao.chengAddress(newAddress, 1);
		return "change_success";
		
	}
	// ��ת���޸��������

	public String toEmail() {
		return "to_email";
	}

	// ��ת���޸ĵ�ַ����
	public String toAddress() {
		return "to_address";
	}

	public Users getModel() {

		return this.user;
	}

}
