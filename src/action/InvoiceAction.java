package action;

import java.io.IOException;
import java.io.PrintWriter;

import entity.Invoice;
import service.InvoiceDAO;
import service_impl.InvoiceDAOImpl;

public class InvoiceAction extends SuperAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	//添加发票信息
	public void  addInovoice() throws IOException{
		
	  String invoicetype=Request.getParameter("invoicetype");
	  String invoicehead=Request.getParameter("invoicehead");
	  String invoicename=Request.getParameter("invoicename");
	  Invoice invoice=new Invoice();
	  invoice.setIheader(invoicehead);
	  invoice.setIname(invoicename);
	  invoice.setItype(invoicetype);
	  InvoiceDAO idao=new InvoiceDAOImpl();
	  int k=idao.invoiceAddRe(invoice);
	  if(k!=0){
		 
		  StringBuilder msg=new StringBuilder();
			msg.append("<a>");
			msg.append("<iid>");
			msg.append(k);
			msg.append("</iid>");
			msg.append("</a>");
			Response.setCharacterEncoding("utf-8");	
			Response.getWriter().write(msg.toString());
		  System.out.println(msg.toString());
		  System.out.println(invoicetype+""+invoicehead+invoicename);
	  }
	
	
	  
		
	}

}
