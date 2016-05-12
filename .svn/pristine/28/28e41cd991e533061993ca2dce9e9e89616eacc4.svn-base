package service_impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import db.MyHibernateSessionFactory;
import entity.Goods;
import entity.ShopCar;
import service.GoodsDAO;
import service.ShopCarDAO;

public class ShopCarDAOImpl implements ShopCarDAO {

	// 加入购物车
	public boolean addShopCar(ShopCar shop) {
		Transaction tx = null;

		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();
			tx = session.beginTransaction();
			session.save(shop);
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

	// 根据用户id查询其购物车的商品数量
	public int reNumber(int uid) {

		Transaction tx = null;
		String hql = "";
        int sum=0;
		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();

			tx = session.beginTransaction();

			hql = "from ShopCar where uid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, uid);
			List<ShopCar> list = query.list();
			tx.commit();
			for (ShopCar shopCar : list) {
			  sum+=shopCar.getGnumber();	
			}
			return sum;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;

		} finally {
			if (tx != null) {
				tx = null;
			}
		}

	}
	//根据用户id查询购物车中各商品的信息

	public List<Goods> reGoods(int uid) {
		Transaction tx = null;
		String hql = "";

		try {
			Session session = MyHibernateSessionFactory.getSessionFactory()
					.getCurrentSession();

			tx = session.beginTransaction();

			hql = "from ShopCar where uid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, uid);
			List<ShopCar> list = query.list();
		    tx.commit();
		    GoodsDAO gdao=new GoodsDAOImpl();
		    List<Goods> list1=new ArrayList<Goods>();
		    
		     for (ShopCar shopCar : list) {
				Goods good=gdao.thisGood(shopCar.getGid());
				list1.add(good);
			}
		   
		    
		return list1;
			
		}catch(Exception e){
			e.printStackTrace();
			 return null;
		}finally{
			
			if(tx!=null){
				tx=null;
			}
		}
	}
//查询商品在不在购物车
	public boolean checkShopCar(int gid,int uid) {
	     Transaction tx=null;
	     String hql="";
	     try{
	    	 Session session=MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
	    	 tx=session.beginTransaction();
	    	 hql="from ShopCar where gid=? and uid=?";
	    	Query query= session.createQuery(hql);
	    	query.setParameter(0, gid);
	    	query.setParameter(1, uid);
	    	List<ShopCar> list=query.list();
	    	tx.commit();
	    	if(list.size()>0){
	    		return true;
	    	}else
	    	{
	    		return false;
	    	}	
	    	 
	     }catch(Exception e){
	    	 e.printStackTrace();
	    	 return false;
	     }finally{
	    	 if(tx!=null){
	    		 tx=null;
	    	 }
	     }

	}

	public boolean addgnumber(int gid,int uid,int number){
		 Transaction tx=null;
	     String hql="";
	     try{
	    	
	    	 Session session=MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
	    	 tx=session.beginTransaction();
	    	 hql="from ShopCar where gid=? and uid=?";
	    	Query query= session.createQuery(hql);
	    	query.setParameter(0, gid);
	    	query.setParameter(1, uid);
	    	ShopCar shop=(ShopCar)query.uniqueResult();
	    	 
	    	tx.commit();
	    	tx=null;
	    	 
	    	 
	    	 
	    	 Session session1=MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
	    	 tx=session1.beginTransaction();
	    	 hql="update ShopCar s set s.gnumber=? where s.gid=? and s.uid=?";
	    	Query query2= session1.createQuery(hql);
	    	query2.setParameter(0, shop.getGnumber()+1);
	    	query2.setParameter(1, gid);
	    	query2.setParameter(2, uid);
	    	int ret=query2.executeUpdate();
	    	
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

	public int checkNumber(int uid, int gid) {
		 Transaction tx=null;
	     String hql="";
	     try{
	    	 Session session=MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
	    	 tx=session.beginTransaction();
	    	 hql="from ShopCar where gid=? and uid=?";
	    	Query query= session.createQuery(hql);
	    	query.setParameter(0, gid);
	    	query.setParameter(1, uid);
	    	ShopCar list=(ShopCar)query.uniqueResult();
	    	tx.commit();
	    	return list.getGnumber();
	    	 
	     }catch(Exception e){
	    	 e.printStackTrace();
	    	 return 0;
	     }finally{
	    	 if(tx!=null){
	    		 tx=null;
	    	 }
	     }
	}

	public List<ShopCar> reShopCar(int uid) {
		
		Transaction tx=null;
	     String hql="";
	     try{
	    	 Session session=MyHibernateSessionFactory.getSessionFactory().getCurrentSession();
	    	 tx=session.beginTransaction();
	    	 hql="from ShopCar where uid=?";
	    	Query query= session.createQuery(hql);   	
	    	query.setParameter(0, uid);
	    	List<ShopCar> list=query.list();
	    	tx.commit();
	    	return list;
	    	 
	     }catch(Exception e){
	    	 e.printStackTrace();
	    	 return null;
	     }finally{
	    	 if(tx!=null){
	    		 tx=null;
	    	 }
	     }
		
		
	}


	

}
