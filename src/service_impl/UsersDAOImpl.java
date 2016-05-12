package service_impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MyHibernateSessionFactory;

import entity.Users;
import service.UsersDAO;

public class UsersDAOImpl implements UsersDAO {

	// 用户注册

	public boolean usersRegister(Users u) {

		Transaction tx = null;

		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			session.save(u);
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

	// 用户登录
	public boolean usersLogin(Users u) {

		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Users where username=? and password=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, u.getUsername());
			query.setParameter(1, u.getPassword());
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
//获取对应用户名的用户信息
	public Users userDetail(String username) {
		
		
		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Users where username=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, username);
			
		    Users user =(Users) query.uniqueResult();
			tx.commit();
			return user;
			
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
  //修改用户邮箱的操作
	public void changeEmail(String email,int uid) {
		 Transaction tx=null;
	     String hql="";
	     try{	 
   	 Session session=MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
   	 tx=session.beginTransaction();
   	 hql="update Users s set s.email=? where s.uid=?";
   	Query query= session.createQuery(hql);
   	query.setParameter(0, email);
	query.setParameter(1, uid);
   	int ret=query.executeUpdate(); 	
   	tx.commit();
 
    }catch(Exception e){
   	 e.printStackTrace();
 
    }finally{
   	 if(tx!=null){
   		 tx=null;
   	 }
    }
	}

	public void chengAddress(String address, int uid) {
		 Transaction tx=null;
	     String hql="";
	     try{	 
   	 Session session=MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
   	 tx=session.beginTransaction();
   	 hql="update Users s set s.address=? where s.uid=?";
   	Query query= session.createQuery(hql);
   	query.setParameter(0, address);
	query.setParameter(1, uid);
   	int ret=query.executeUpdate(); 	
   	tx.commit();
 
    }catch(Exception e){
   	 e.printStackTrace();
 
    }finally{
   	 if(tx!=null){
   		 tx=null;
   	 }
    }
	}

	public List<Users> reUsersDetail() {
		Transaction tx = null;

		String hql = "";
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Users";
			Query query = session.createQuery(hql);
			
			List<Users> list =query.list();
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
