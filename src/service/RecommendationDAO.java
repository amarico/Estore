package service;

import java.util.List;

import entity.Goods;
import entity.Recommendation;

public interface RecommendationDAO {

	//��Ʒ�Ƽ���
	public List<Recommendation> reRecommendation(int fid);
	public List<Goods> reGoods(List<Recommendation> list);
}
