package service;

import java.util.List;

import entity.Goods;
import entity.ShopCar;

public interface ShopCarDAO {

	//把商品加入购物车
	public boolean addShopCar(ShopCar shop);
	//根据用户id查询其购物车的商品数量
    public int reNumber(int uid);
    //根据用户id查询购物车中各商品的信息
    public List<Goods> reGoods(int uid);
    //查询商品在在不在购物车
    public boolean checkShopCar(int gid,int uid);
    //根据用户id和商品id查询其数量
    
    public int checkNumber(int uid,int gid);
    //指定用户的指定商品数量加一
    public boolean addgnumber(int gid,int uid,int number);
    //根据用户id返回购物车信息
    public List<ShopCar> reShopCar(int uid);
    
}
