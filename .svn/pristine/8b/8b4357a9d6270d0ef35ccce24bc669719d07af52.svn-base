package service_impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MyHibernateSessionFactory;
import entity.Invoice;

import service.InvoiceDAO;

public class InvoiceDAOImpl implements InvoiceDAO {

	public boolean invoiceAdd(Invoice invoice) {
		Transaction tx = null;

		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			session.save(invoice);
			tx.commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;

		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

	// 存入发票信息并返回其编号
	public int invoiceAddRe(Invoice invoice) {
		Transaction tx = null;

		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			session.save(invoice);
			int id = invoice.getVid();
			tx.commit();

			return id;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;

		} finally {
			if (tx != null) {
				tx = null;
			}
		}
	}

	public Invoice reInvioce(int vid) {
		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Invoice where vid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, vid);
			Invoice invoice =(Invoice) query.uniqueResult();
			tx.commit();
			return invoice;
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
