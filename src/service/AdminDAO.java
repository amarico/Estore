package service;

import entity.Admin;

public interface AdminDAO {
	//�����Ƿ��¼�ɹ���Ϣ
	public boolean adminLogin(Admin admin);
	/**
	 * 
	 * @param admin
	 * @return
	 */
	public Admin adminDetail(Admin admin);
	
	

}
