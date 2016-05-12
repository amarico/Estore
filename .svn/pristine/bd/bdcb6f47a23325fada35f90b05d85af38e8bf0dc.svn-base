package testShopCarDAO;

import java.util.List;

import junit.framework.Assert;

import org.junit.Test;

import entity.Goods;
import entity.ShopCar;

import service.ShopCarDAO;
import service_impl.ShopCarDAOImpl;

public class TestShopCar {

	
	@Test
	public void reList(){
		
		ShopCarDAO sdao=new ShopCarDAOImpl();
		
	   int k= sdao.reNumber(1);
	   System.out.println(k);
		
		
	}
	@Test
	public void testShop(){
		
		ShopCarDAO sdao=new ShopCarDAOImpl();
		
		List<Goods> list=sdao.reGoods(1);
		
		for (Goods goods : list) {
			
			System.out.println(goods.getGname());
		}
		
		
	}
	
	@Test
	public void testCheck(){
		
		ShopCarDAO sdao=new ShopCarDAOImpl();
		Assert.assertEquals(true, sdao.checkShopCar(2, 1));
		
	}
	
	
	@Test
	public void addNumber(){
		
		ShopCarDAO sdao=new ShopCarDAOImpl();
		Assert.assertEquals(true, sdao.addgnumber(2, 1,3));
		
	}
	
	@Test
	public void regoodnum(){
		
		ShopCarDAO sdao=new ShopCarDAOImpl();
		int k=sdao.checkNumber(1,6 );
		System.out.println(k);
		
	}
	
	
	@Test
	public void reshopcar(){
		
		ShopCarDAO sdao=new ShopCarDAOImpl();
		List<ShopCar> list=sdao.reShopCar(1);
		for (ShopCar shopCar : list) {
			System.out.println(shopCar.getGnumber());
		}
		
	}
	
	
}
