package entity;
//������Ϣ��

public class Trade {
	
	private int tid;//������Ϣ���
	private int  uid;//�û�id
	private int  payway;//֧����ʽ
	private int invoiceid;//��Ʊ��Ϣ
	private int aid;//��ַ��Ϣ
	
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
