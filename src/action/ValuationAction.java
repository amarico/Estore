package action;

import service.ValuationDAO;
import service_impl.ValuationDAOImpl;

public class ValuationAction extends SuperAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//���ĳ�����۲ȵ���Ŀ
	
	public void addNNumber(){
		
		int vid=Integer.parseInt(Request.getParameter("vid"));
		ValuationDAO vdao=new ValuationDAOImpl();
		vdao.nNumberAdd(vid,vdao.reNNumber(vid));
		
	}
	
	
	//���ĳ���˵ĵ�����
	public void addYNumber(){
		
	int vid=Integer.parseInt(Request.getParameter("vid"));
	
	
	ValuationDAO vdao=new ValuationDAOImpl();
    vdao.yNumberAdd(vid,vdao.reYNumber(vid));
	System.out.println("fuck"+vid);
		
		
		
	}
	
	

}
