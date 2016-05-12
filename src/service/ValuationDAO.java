package service;

import java.util.List;

import entity.Valuation;

public interface ValuationDAO {
	
	//提取对应商品id的数据
	public List<Valuation> reValuation(int id);
	//改变对应某条评论的点赞数
	public void yNumberAdd(int vid,int ynumber);
	//提取对应编号的点赞数
	public int reYNumber(int vid);
	//提取对应编号的踩的数量
	public int reNNumber(int vid);
	//改变对应某条评论的点赞数
	public void nNumberAdd(int vid,int nnumber);
	
	

}
