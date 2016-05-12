package service_impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MyHibernateSessionFactory;
import entity.Trade;
import entity.Users;
import service.TradeDAO;

public class TradeDAOImpl implements TradeDAO {

	public int addTradeRserial(Trade trade) {

		Transaction tx = null;

		try {

			// 先把商品信息存入表中
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			session.save(trade);
			int id = trade.getTid();
			tx.commit();
			// 再获取对应的编号
			return id;

		} catch (Exception ex) {
			ex.printStackTrace();
			return 0;
		} finally {
			if (tx != null) {
				// tx.commit();
				tx = null;
			}
		}
	}

	public List<Trade> reTradeList(int uid) {

		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Trade where uid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, uid);
			List<Trade> list = query.list();
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
