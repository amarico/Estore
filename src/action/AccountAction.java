package action;

import java.util.List;

import service.ShopCarDAO;
import service.TradeDAO;
import service.TradeGoodsDAO;
import service_impl.ShopCarDAOImpl;
import service_impl.TradeDAOImpl;
import service_impl.TradeGoodsDAOImpl;
import entity.Goods;
import entity.ShopCar;
import entity.Trade;
import entity.TradeGoods;

public class AccountAction extends SuperAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// 这个是结算界面不要弄错了
	public String account() { 
		 int invoice= Integer.parseInt(Request.getParameter("invoice"));
		 int payway= Integer.parseInt(Request.getParameter("payway"));
		 int address= Integer.parseInt(Request.getParameter("address"));
		try {
			// 这一步从链接中提取信息，但是先写死吧
			Trade trade = new Trade(1, 1, payway, invoice, address);
			TradeDAO tdao = new TradeDAOImpl();
			int k = tdao.addTradeRserial(trade);// 把信息存入表中并获取其在表中的id号
			// 往附表中写入商品信息
			TradeGoodsDAO tradeGood = new TradeGoodsDAOImpl();
			ShopCarDAO sdao = new ShopCarDAOImpl();
			List<ShopCar> list = sdao.reShopCar(1);// 从购物车表中抽取信息
			for (ShopCar shopCar : list) {
				TradeGoods good = new TradeGoods();
				good.setTradeid(k);
				good.setGid(shopCar.getGid());
				good.setGnumber(shopCar.getGnumber());
				tradeGood.addTradeGoods(good);
			}

			return "deal_success";
		} catch (Exception e) {
			e.printStackTrace();
			return "deal_failure";
		}

	}

}
