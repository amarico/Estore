package testRecommendation;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import entity.Goods;
import entity.Recommendation;

import service.GoodsDAO;
import service.RecommendationDAO;
import service_impl.GoodsDAOImpl;
import service_impl.RecommendationDAOImpl;

public class TestRecommendationDAO {

	// 测试多表联合查询的类的返回

	@Test
	public void getR() {

		RecommendationDAO rdao = new RecommendationDAOImpl();

		List<Recommendation> list = rdao.reRecommendation(300);

		List<Goods> glist = rdao.reGoods(list);
		
		for (Goods goods : glist) {
			System.out.println(goods.getGname());
		}

	}
}
