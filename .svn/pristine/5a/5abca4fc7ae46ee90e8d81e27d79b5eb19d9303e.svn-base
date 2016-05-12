package action;

import java.io.IOException;
import java.io.PrintWriter;

import service.AddressDAO;
import service_impl.AddressDAOImpl;

import com.opensymphony.xwork2.ModelDriven;

import entity.Address;

public class AddressAction extends SuperAction implements ModelDriven<Address> {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Address address=new Address();
	
	
	//这里不仅仅把地址信息添加到表里面，还要返回数据库中的信息
	public void addressAdd() throws IOException{
		
		
//		String re="你好";
		AddressDAO adao=new AddressDAOImpl();
		if(adao.addressCre(address)!=0){
			
			StringBuilder msg=new StringBuilder();
			msg.append("<a>");
			msg.append("<address>");
			msg.append(address.getAddress());
			msg.append("</address>");
			msg.append("<phone>");
			msg.append(address.getPhoneNumber());
			msg.append("</phone>");
			msg.append("<name>");
			msg.append(address.getConsignee());
			msg.append("</name>");
			msg.append("<value>");
			msg.append(adao.addressCre(address));
			msg.append("</value>");
			msg.append("</a>");
			Response.setCharacterEncoding("utf-8");	
			 Response.getWriter().write(msg.toString());
			
		}else{
			 
			 
			
		}
		
		
		
	}
	
	
	
	public Address getModel() {
		// TODO Auto-generated method stub
		return this.address;
	}

}
