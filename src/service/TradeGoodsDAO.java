package service;

import java.util.List;

import entity.Goods;
import entity.TradeGoods;

//������Ϣ�ĸ���
public interface TradeGoodsDAO {
	
	//�����������Ϣ
	public boolean  addTradeGoods(TradeGoods tradeGoodss);
	//���ݽ���id������Ʒ����Ϣ
	public List<TradeGoods> reGoodsByTrade(int tradeid);


}