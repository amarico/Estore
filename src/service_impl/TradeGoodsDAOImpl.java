package service_impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MyHibernateSessionFactory;
import entity.Goods;
import entity.TradeGoods;
import service.TradeGoodsDAO;

public class TradeGoodsDAOImpl implements TradeGoodsDAO {

	
	//添加一个具体商品信息
	public boolean addTradeGoods(TradeGoods tradeGoodss) {
		Transaction tx = null;

		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			session.save(tradeGoodss);
			tx.commit();
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		} finally {
			if (tx != null) {
				// tx.commit();
				tx = null;
			}
		}
	}
	//根据交易id提取对应商品交易信息

	public List<TradeGoods> reGoodsByTrade(int tradeid) {
		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from TradeGoods where tradeid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, tradeid);
			List<TradeGoods> list = query.list();
			tx.commit();
			return list;
			
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			if (tx != null) {
				// tx.commit();
				tx = null;
			}
		}
	}
   

}
