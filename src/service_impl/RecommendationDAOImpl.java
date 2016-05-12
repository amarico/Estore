package service_impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MyHibernateSessionFactory;

import entity.Goods;
import entity.Recommendation;
import service.GoodsDAO;
import service.RecommendationDAO;

public class RecommendationDAOImpl implements RecommendationDAO {

	public List<Recommendation> reRecommendation(int fid) {
		Transaction tx = null;
		String hql = "";

		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Recommendation where fid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, fid);
			List<Recommendation> list = query.list();
			tx.commit();
			return list;

		} catch (Exception e) {
			e.printStackTrace();
			return null;

		} finally {

			if (tx != null) {
				tx = null;
			}
		}

	}
//返回对应父类的商品
	public List<Goods> reGoods(List<Recommendation> list) {

		GoodsDAO gdao = new GoodsDAOImpl();
		List<Goods> listGoods = new ArrayList<Goods>();
		for (Recommendation recommendation : list) {

			Goods good = gdao.thisGood(recommendation.getRid());

			listGoods.add(good);
		}
		return listGoods;
	}

}
