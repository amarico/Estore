package entity;
//交易信息表

public class Trade {
	
	private int tid;//交易信息编号
	private int  uid;//用户id
	private int  payway;//支付方式
	private int invoiceid;//发票信息
	private int aid;//地址信息
	
	public Trade(){
		
	}

	
	
	
	public Trade(int tid, int uid, int payway, int invoiceid, int aid) {
		//super();
		this.tid = tid;
		this.uid = uid;
		this.payway = payway;
		this.invoiceid = invoiceid;
		this.aid = aid;
	}




	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getPayway() {
		return payway;
	}

	public void setPayway(int payway) {
		this.payway = payway;
	}

	public int getInvoiceid() {
		return invoiceid;
	}

	public void setInvoiceid(int invoiceid) {
		this.invoiceid = invoiceid;
	}

	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;
	}
	
	
	
	
}
