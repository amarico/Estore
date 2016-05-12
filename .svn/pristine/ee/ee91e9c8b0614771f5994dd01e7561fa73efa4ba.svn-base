package service_impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MyHibernateSessionFactory;
import entity.Classify;
import entity.Goods;
import service.ClassifyDAO;
import service.GoodsDAO;

public class ClassifyDAOImpl implements ClassifyDAO {

	// 用在后台控制添加列表
	public boolean classifyAdd(Classify c) {

		Transaction tx = null;

		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			session.save(c);
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

	// 返回同个等级的列表内容
	public List<Classify> reClassify(int id) {

		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Classify where cparent=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, id);
			List<Classify> list = query.list();
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

	// 返回制定分类id分类
	public Classify reIdClassify(int cid) {

		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Classify where cid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, cid);
			Classify classify = (Classify) query.uniqueResult();
			tx.commit();
			return classify;

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

	// 返回制定分类的父分类
	public Classify reFaClassify(Classify classify) {
		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Classify where cid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, classify.getCparent());
			Classify rclassify = (Classify) query.uniqueResult();
			tx.commit();
			return rclassify;

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

	public List<String> reList(int gid) {
	
		List<String> list=new ArrayList<String>();
		ClassifyDAOImpl classifyDAOimpl=new ClassifyDAOImpl();
		
		GoodsDAO gdao=new GoodsDAOImpl();
		Goods good=gdao.thisGood(gid);
		Classify classify= classifyDAOimpl.reIdClassify(good.getGsid());
		
		
		
		//不断查找父类名放入list当中
		
		while(classify.getCparent()!=0){
		list.add(classify.getCname());
		classify=classifyDAOimpl.reFaClassify(classify);
		
		}
		list.add("首页");
		return list;
	}

}
