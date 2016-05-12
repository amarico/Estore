package action;

import service.ShopCarDAO;
import service_impl.ShopCarDAOImpl;

import entity.ShopCar;

public class ShopCarAction extends SuperAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String account() {

		// 用户登录后购物车的处理问题
		String userid = null;
		/*
		 * if(session.getAttribute("userid")!=null){ userid=
		 * session.getAttribute("userid").toString();
		 * System.out.println("ha"+userid); }else{ userid="0"; }
		 */

		userid = session.getAttribute("userid").toString();

		ShopCar shop = new ShopCar();

		int uid = Integer.parseInt(userid);
		int gid = Integer.parseInt(Request.getParameter("gid"));
		// 查询该用户对应的商品是不是已经存在shopcar的表中

		System.out.println("fuck" + gid);
		ShopCarDAO sdao = new ShopCarDAOImpl();

		if (sdao.checkShopCar(gid, uid)) {

			// 如果已经在表中那么就修改其数量

			if (sdao.addgnumber(gid, uid, 0)) {
				return "add_success";
			} else {
				return "add_failure";
			}

		} else {
			shop.setUid(uid);
			shop.setGid(gid);
			shop.setGnumber(1);
			if (sdao.addShopCar(shop)) {
				return "add_success";
			} else {
				return "add_failure";
			}
		}

	}

}
