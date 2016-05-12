package testValuation;

import java.util.List;

import org.junit.Test;

import entity.Valuation;

import service.ValuationDAO;
import service_impl.ValuationDAOImpl;

public class TestValuation {

	
	@Test
	public void testUniqueValuation(){
		
		ValuationDAO vdao=new ValuationDAOImpl();
		List<Valuation> list=vdao.reValuation(3);
		for (Valuation valuation : list) {
			System.out.println(valuation.getText());
		}
	}
	@Test
	public void testReturnYnumber(){
		ValuationDAO vdao=new ValuationDAOImpl();
		System.out.println(vdao.reYNumber(4));
	}
	
	
	@Test
	public void testYNumberAdd(){
		
		ValuationDAO vdao=new ValuationDAOImpl();
	    vdao.yNumberAdd(4,vdao.reYNumber(4));
		
	}
	@Test
	public void testNNumberAdd(){
		
		ValuationDAO vdao=new ValuationDAOImpl();
		System.out.println("fuck"+vdao.reNNumber(4));
		 vdao.nNumberAdd(4,vdao.reNNumber(4));
		
	}
	
	
	
}
