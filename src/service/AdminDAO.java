package service;

import entity.Admin;

public interface AdminDAO {
	//返回是否登录成功信息
	public boolean adminLogin(Admin admin);
	/**
	 * 
	 * @param admin
	 * @return
	 */
	public Admin adminDetail(Admin admin);
	
	

}
