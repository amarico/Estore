package service_impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MyHibernateSessionFactory;
import entity.Address;
import service.AddressDAO;

public class AddressDAOImpl implements AddressDAO {

	//新用户地址的添加
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
	//提取对应用户的地址信息
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
	//添加一个地址并返回该地址在数据中的编号
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
	
	//根据对应的编号提取地址信息
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
