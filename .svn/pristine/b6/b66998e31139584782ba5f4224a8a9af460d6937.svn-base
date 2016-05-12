package service_impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MyHibernateSessionFactory;

import entity.Valuation;
import service.ValuationDAO;

public class ValuationDAOImpl implements ValuationDAO {

	
    //从数据库中抽取对应商品id的评价
	public List<Valuation> reValuation(int id) {
		Transaction tx = null;
		String hql = "";
		try {

			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Valuation where gid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, id);
			List<Valuation> list=query.list();	
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

	
	
	
	//改变对应某条评论的点赞数
	public void yNumberAdd(int vid,int ynumber) {
		
		
		Transaction tx = null;
		String hql = "";
		try {

			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();		
			 hql="update Valuation v set v.ynumber=? where v.vid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, ynumber+1);
			query.setParameter(1, vid);
			int ret=query.executeUpdate();
            tx.commit();
         
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	
		
		
	}
	//提取对应编号的点赞数
	public int reYNumber(int vid) {
		
		Transaction tx = null;
		String hql = "";
		try {

			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Valuation where vid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, vid);
			Valuation valuation=(Valuation)query.uniqueResult();	
            tx.commit();
            return valuation.getYnumber();
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
		
	}



   //添加某条评论的踩的个数
	public void nNumberAdd(int vid, int nnumber) {
		Transaction tx = null;
		String hql = "";
		try {

			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();		
			 hql="update Valuation v set v.nnumber=? where v.vid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, nnumber+1);
			query.setParameter(1, vid);
			int ret=query.executeUpdate();
            tx.commit();
         
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	
		
	}



    //返回对应编号的踩的数量
	public int reNNumber(int vid) {
		Transaction tx = null;
		String hql = "";
		try {

			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Valuation where vid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, vid);
			Valuation valuation=(Valuation)query.uniqueResult();	
            tx.commit();
            return valuation.getNnumber();
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			if (tx != null) {
				tx = null;
			}
		}
		
	}

}
