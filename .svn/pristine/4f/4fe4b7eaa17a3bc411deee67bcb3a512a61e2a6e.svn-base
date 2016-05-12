package service_impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MyHibernateSessionFactory;
import entity.Admin;
import service.AdminDAO;

public class AdminDAOImpl implements AdminDAO {

	public boolean adminLogin(Admin admin) {
		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Admin where adminName=? and adminPassword=?";
			Query query = session.createQuery(hql);
			query.setParameter(0,admin.getAdminName());
			query.setParameter(1, admin.getAdminPassword());
			List list = query.list();
			tx.commit();
			if (list.size() > 0) {
				return true;
			} else {
				return false;
			}
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

	public Admin adminDetail(Admin admin) {
		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Admin where adminName=? and adminPassword=?";
			Query query = session.createQuery(hql);
			query.setParameter(0,admin.getAdminName());
			query.setParameter(1, admin.getAdminPassword());
			Admin readmin=(Admin)query.uniqueResult();
			tx.commit();
			return readmin;
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
