package action;

import service.GoodsDAO;
import service_impl.GoodsDAOImpl;

import com.opensymphony.xwork2.ModelDriven;

import entity.Goods;

public class GoodsAction extends SuperAction  implements ModelDriven<Goods>{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	//商品添加动作
	
	public String goodsAdd(){
		
		
		GoodsDAO gdao=new GoodsDAOImpl();
		if(gdao.goodsAdd(good)){
			return "add_success";
		}else{
			return "add_failure";
		}
	}
	//商品删除动作
	public String goodsDelete(){

	  Integer gid=Integer.parseInt(Request.getParameter("gid"))  ;
		GoodsDAO gdao=new GoodsDAOImpl();
		if(gdao.goodsDelete(gid)){
			return "add_success";
		}else{
			return "add_failure";
		}
	}
    private Goods good=new Goods();
	public Goods getModel() {
		// TODO Auto-generated method stub
		return this.good;
	}

}
