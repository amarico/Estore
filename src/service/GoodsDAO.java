package service;

import java.util.List;

import entity.Goods;

public interface GoodsDAO {

	//添加商品
	public boolean goodsAdd(Goods g);
	//从数据库中提取（4个商品）
	public List<Goods> reGoods();
	//从数据库中获取全部商品
	public List<Goods> reAllGoods();
	//从数据库中提取同价位的商品
	public List<Goods> samePrice(int id);
	//同价位商品中卖的最好的
	public List<Goods> bestSell(int id);
	//返回制定ip的商品
	public Goods thisGood(int id);
	//提取制定种类的商品
	public List<Goods> uniqueGoods(int id);
	//删除商品
	public boolean goodsDelete(int gid);
}
