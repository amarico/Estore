package service;

import java.util.List;

import entity.Trade;

//商品交易总表
public interface TradeDAO {
	
	public int addTradeRserial(Trade trade);//添加信息到表中并返回该信息编号
    public List<Trade> reTradeList(int uid);//提取对应用户的交易信息
}
