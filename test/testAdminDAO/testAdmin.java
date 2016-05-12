package testAdminDAO;

import junit.framework.Assert;

import org.junit.Test;

import service.AdminDAO;
import service_impl.AdminDAOImpl;

import entity.Admin;



public class testAdmin {

	@Test
	public void Test(){
		
		
		Admin admin=new Admin(1,"root","root");
		AdminDAO adao=new AdminDAOImpl();
		Assert.assertEquals(true, adao.adminLogin(admin));
		
		
		
	}
	@Test
	public void TestReDetail(){
		
		
		Admin admin=new Admin(1,"root","root");
		AdminDAO adao=new AdminDAOImpl();
     Admin readmin=   adao.adminDetail(admin);
     System.out.println(readmin.getAdminName());
		
		
	}
}
