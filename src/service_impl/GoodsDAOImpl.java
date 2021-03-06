package service_impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MyHibernateSessionFactory;
import entity.Classify;
import entity.Goods;
import service.GoodsDAO;

public class GoodsDAOImpl implements GoodsDAO {

	// 添加商品
	public boolean goodsAdd(Goods g) {
		Transaction tx = null;

		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			session.save(g);
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

	// 返回制定id的商品
	public Goods thisGood(int id) {
		Transaction tx = null;
		String hql = "";

		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Goods where gid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, id);
			Goods good = (Goods) query.uniqueResult();
			tx.commit();
			return good;
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (tx != null) {
				tx = null;
			}
		}
		return null;

	}

	// 返回商品list
	public List<Goods> reGoods() {
		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Goods";
			Query query = session.createQuery(hql);
			query.setMaxResults(4);
			List<Goods> list = query.list();
			tx.commit();
			return list;

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (tx != null) {
				tx = null;
			}
		}
		return null;
	}

	// 从数据库中提取同价位的商品
	public List<Goods> samePrice(int id) {

		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Goods where gprice=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, id);
			List<Goods> list = query.list();
			tx.commit();
			return list;

		} catch (Exception e) {
			e.printStackTrace();

		} finally {

			if (tx != null) {
				tx = null;
			}
		}

		return null;
	}

	// 同价位商品中卖的最好的
	public List<Goods> bestSell(int id) {
		Transaction tx = null;
		String hql = "";
		try {

			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Goods";
			Query query = session.createQuery(hql);
			List<Goods> list = query.list();
			tx.commit();
			return list;

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (tx != null) {
				tx = null;
			}
		}

		return null;
	}

	public List<Goods> uniqueGoods(int id) {

		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Goods where gsid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, id);
			List<Goods> list = query.list();
			tx.commit();
			return list;

		} catch (Exception e) {
			e.printStackTrace();

		} finally {

			if (tx != null) {
				tx = null;
			}
		}

		return null;
	}

	public List<Goods> reAllGoods() {
		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Goods";
			Query query = session.createQuery(hql);
		
			List<Goods> list = query.list();
			tx.commit();
			return list;

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			if (tx != null) {
				tx = null;
			}
		}
		return null;
	}

	public boolean goodsDelete(int gid) {
		 Transaction tx=null;
	     String hql="";
	     try{	 
   	 Session session=MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
   	 tx=session.beginTransaction();
   	 hql="delete Goods s  where s.gid=?";
   	Query query= session.createQuery(hql);
   	query.setParameter(0, gid);
   	query.executeUpdate();
   	tx.commit();
   	return true;
 
    }catch(Exception e){
   	 e.printStackTrace();
   return false;
    }finally{
   	 if(tx!=null){
   		 tx=null;
   	 }
    }
	}

}
