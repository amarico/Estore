package testGoodsDAO;

import java.util.List;

import junit.framework.Assert;

import org.junit.Test;

import service.AddressDAO;
import service.GoodsDAO;
import service_impl.AddressDAOImpl;
import service_impl.GoodsDAOImpl;

import entity.Address;
import entity.Goods;

public class TestAddress {

	// @Test
	// public void Test(){
	// Goods g=new Goods(1, "苹果", 24, "www.baidu.com",1);
	// GoodsDAO gdao=new GoodsDAOImpl();
	// Assert.assertEquals(true, gdao.goodsAdd(g));
	// }
	@Test
	public void TestReturn() {
		GoodsDAO gdao = new GoodsDAOImpl();
		List<Goods> list = gdao.reGoods();

		for (Goods goods : list) {

			System.out.println(goods.getGname());
		}
	}

	@Test
	public void TestSamePrice() {
		GoodsDAO gdao = new GoodsDAOImpl();
		List<Goods> list = gdao.samePrice(23);
		if (list.size() > 0) {
			System.out.println("hah");
		}
		for (Goods goods : list) {

			System.out.println(goods.getGname());
		}

	}

	// 这里方法名是有问题的
	@Test
	public void TestBestSell() {
		GoodsDAO gdao = new GoodsDAOImpl();
		List<Goods> list = gdao.bestSell(0);
		if (list.size() > 0) {
			System.out.println("hah");
		}
		for (Goods goods : list) {

			System.out.println(goods.getGname());
		}

	}

	@Test
	public void testUniqueGoods() {
		GoodsDAO gdao = new GoodsDAOImpl();
		Goods good = gdao.thisGood(1);

		System.out.println(good.getGname());

	}
	
	
	@Test
	public void testUniqu() {
		GoodsDAO gdao = new GoodsDAOImpl();
		List<Goods> list = gdao.uniqueGoods(1);
		if (list.size() > 0) {
			System.out.println("hah");
		}
		for (Goods goods : list) {

			System.out.println(goods.getGname());
		}
	}
	@Test
	public void testDelete() {
		GoodsDAO gdao = new GoodsDAOImpl();
		Assert.assertEquals(true, gdao.goodsDelete(12));
	}

}
