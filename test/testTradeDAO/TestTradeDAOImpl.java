package testTradeDAO;

import java.util.List;

import org.junit.Test;

import entity.Trade;

import service.TradeDAO;
import service_impl.TradeDAOImpl;

public class TestTradeDAOImpl {
	
	//���Ե��ǰ���Ʒ�������ݿ⵱�У�������������id
	@Test
	public void renumber(){
		
		Trade trade=new Trade(2,1,1,1,1);
		TradeDAO tdao=new TradeDAOImpl();
	int k=	tdao.addTradeRserial(trade);
		
		System.out.println(k+"fuck");
		
		
	}
	@Test
	public void retradeDetail(){
		
	
		TradeDAO tdao=new TradeDAOImpl();
	    List<Trade> list=	tdao.reTradeList(1);
		
	   for (Trade trade : list) {
		System.out.println(trade.getPayway());
	}
		
		
	}
	

}
