package testAddressDAO;

import java.util.List;

import junit.framework.Assert;

import org.junit.Test;

import service.AddressDAO;
import service_impl.AddressDAOImpl;

import entity.Address;

public class TestAddress {
	
	
	@Test
	public void Test(){
		Address a=new Address(1, 1, "ÉÏº£", "18782216869", "ÎÂÁúÇå");
		AddressDAO adao=new AddressDAOImpl();
		Assert.assertEquals(true, adao.addressCreate(a));
	}
	@Test
	public void rTest(){
	
		AddressDAO adao=new AddressDAOImpl();
	    List<Address>	list=adao.reAddress(1);
	    for (Address address : list) {
			System.out.println(address.getAddress());
		}
	}
	@Test
	public void runiqueAddress(){
	
		AddressDAO adao=new AddressDAOImpl();
	    Address	address=adao.reAddressByAid(1);
	  System.out.println(address.getPhoneNumber());
	}

}
