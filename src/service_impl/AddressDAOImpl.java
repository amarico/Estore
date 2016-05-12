package service_impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MyHibernateSessionFactory;
import entity.Address;
import service.AddressDAO;

public class AddressDAOImpl implements AddressDAO {

	//���û���ַ�����
	public boolean addressCreate(Address a) {
		
		Transaction tx = null;

		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			session.save(a);
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
	//��ȡ��Ӧ�û��ĵ�ַ��Ϣ
	public List<Address> reAddress(int uid) {
		Transaction tx=null;
		String hql="";
		try{
			
			Session session=MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx=session.beginTransaction();
			hql="from Address where uid=?";
			Query query=session.createQuery(hql);
			query.setParameter(0, uid);
			List<Address> list=query.list();
			tx.commit();
			return list;
			
		}catch(Exception e){
			e.printStackTrace();
			return null;
			
		}finally{
			if(tx!=null)
			{
				tx=null;
			}
		}

	}
	//���һ����ַ�����ظõ�ַ�������еı��
	public int addressCre(Address a) {
		Transaction tx = null;

		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			session.save(a);
			int id=a.getAid();
			tx.commit();
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
	
	//���ݶ�Ӧ�ı����ȡ��ַ��Ϣ
	public Address reAddressByAid(int aid) {
		Transaction tx=null;
		String hql="";
		try{
			
			Session session=MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx=session.beginTransaction();
			hql="from Address where uid=?";
			Query query=session.createQuery(hql);
			query.setParameter(0, aid);
			Address address=(Address)query.uniqueResult();
			tx.commit();
			return address;
			
		}catch(Exception e){
			e.printStackTrace();
			return null;
			
		}finally{
			if(tx!=null)
			{
				tx=null;
			}
		}
	}
	
	
	

}
