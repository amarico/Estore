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

	// ���ں�̨��������б�
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

	// ����ͬ���ȼ����б�����
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

	// �����ƶ�����id����
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

	// �����ƶ�����ĸ�����
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
		
		
		
		//���ϲ��Ҹ���������list����
		
		while(classify.getCparent()!=0){
		list.add(classify.getCname());
		classify=classifyDAOimpl.reFaClassify(classify);
		
		}
		list.add("��ҳ");
		return list;
	}

}
