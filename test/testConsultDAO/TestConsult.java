package testConsultDAO;

import java.util.List;

import org.junit.Test;

import entity.Valuation;

import service.ValuationDAO;
import service_impl.ValuationDAOImpl;

public class TestConsult {

	@Test
	public void TestConsult() {
		ValuationDAO vdao = new ValuationDAOImpl();
		List<Valuation> list = vdao.reValuation(0);

		for (Valuation valuation : list) {
			System.out.println(valuation.getText());
		}
	}
}
