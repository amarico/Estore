package action;

import service.ValuationDAO;
import service_impl.ValuationDAOImpl;

public class ValuationAction extends SuperAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//添加某条评论踩的数目
	
	public void addNNumber(){
		
		int vid=Integer.parseInt(Request.getParameter("vid"));
		ValuationDAO vdao=new ValuationDAOImpl();
		vdao.nNumberAdd(vid,vdao.reNNumber(vid));
		
	}
	
	
	//添加某个人的点赞数
	public void addYNumber(){
		
	int vid=Integer.parseInt(Request.getParameter("vid"));
	
	
	ValuationDAO vdao=new ValuationDAOImpl();
    vdao.yNumberAdd(vid,vdao.reYNumber(vid));
	System.out.println("fuck"+vid);
		
		
		
	}
	
	

}
