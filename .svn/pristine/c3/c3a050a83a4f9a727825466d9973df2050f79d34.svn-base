package testInvoiceDAO;

import org.junit.Test;

import entity.Invoice;

import service.InvoiceDAO;
import service_impl.InvoiceDAOImpl;

public class TestInvoice {

	@Test
	public void InvoiceAdd() {

		Invoice invoice=new Invoice(3,4,"hah","hah","hdf");
		InvoiceDAO idao=new InvoiceDAOImpl();
		if(idao.invoiceAdd(invoice)){
			System.out.println("success");
		}else
		{
			System.out.println("failure");
		}
	}
	
	@Test
	public void reInvoice() {

		
		InvoiceDAO idao=new InvoiceDAOImpl();
	Invoice invoice=	idao.reInvioce(1);
	System.out.println(invoice.getIheader());
		
	}
}
