package entity;

public class Invoice {

	//ÿ�����׵ķ�Ʊ��Ψһ��ʶ
	private int  vid;
	//ÿ�ν��׵ĵ���
	private int  tid;
	private String itype;
	private String iheader;
	private String iname;
	
	
	public Invoice(){
		
	}
	
	
	public Invoice(int vid, int tid, String itype, String iheader, String iname) {
		//super();
		this.vid = vid;
		this.tid = tid;
		this.itype = itype;
		this.iheader = iheader;
		this.iname = iname;
	}
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getItype() {
		return itype;
	}
	public void setItype(String itype) {
		this.itype = itype;
	}
	public String getIheader() {
		return iheader;
	}
	public void setIheader(String iheader) {
		this.iheader = iheader;
	}
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	
	
}
