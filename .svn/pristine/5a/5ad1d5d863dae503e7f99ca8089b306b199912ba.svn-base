package action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

//所有action的父类
public class SuperAction extends ActionSupport implements ServletRequestAware, ServletResponseAware,ServletContextAware{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected HttpServletResponse Response ;
	protected HttpServletRequest Request;
	protected HttpSession session;
	protected ServletContext Application;
	public void setServletRequest(HttpServletRequest Request) {
		// TODO Auto-generated method stub
		this.Request=Request;
		this.session=this.Request.getSession();
	}

	public void setServletResponse(HttpServletResponse Response) {
		// TODO Auto-generated method stub
		this.Response=Response;
	}

	public void setServletContext(ServletContext Application) {
		// TODO Auto-generated method stub
		this.Application=Application;
	}

}
