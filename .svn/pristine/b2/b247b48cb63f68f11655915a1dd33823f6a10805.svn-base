package service;

import java.util.List;

import entity.Users;

public interface UsersDAO {

	public boolean usersLogin(Users u);
	public boolean usersRegister(Users u);
	public Users userDetail(String username);
	//修改用户邮箱的操作
	public void changeEmail(String email,int uid);
	//修改用户地址
	public void chengAddress(String address,int uid);
	//返回所有的用户信息
	public List<Users> reUsersDetail();
}
