package testTradeGoodsDAO;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import service.TradeDAO;
import service.TradeGoodsDAO;
import service_impl.TradeDAOImpl;
import service_impl.TradeGoodsDAOImpl;
import entity.Trade;
import entity.TradeGoods;

public class TestTradeGoods {

	
	@Test
	public void renumber(){
		
		TradeGoods goods=new TradeGoods(1,1,1,1);
		
		TradeGoodsDAO tdao=new TradeGoodsDAOImpl();
	
		Assert.assertEquals(true, tdao.addTradeGoods(goods));
		
		
	}
	@Test
	public void relist(){
		
	
		
		TradeGoodsDAO tdao=new TradeGoodsDAOImpl();
	
		List<TradeGoods> list=tdao.reGoodsByTrade(37);
		
		for (TradeGoods tradeGoods : list) {
			
			System.out.println(tradeGoods.getGid());
		}
		
		
	}
	
}
