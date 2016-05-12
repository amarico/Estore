package entity;

public class TradeGoods {

	private int tid;//自动递增的编号
	private int tradeid;//在交易表中的编号
	private int gid;//商品编号
	private int gnumber;//商品数量
	
	public TradeGoods(){
		
	}
	
	
	public TradeGoods(int tid, int tradeid, int gid, int gnumber) {
		//super();
		this.tid = tid;
		this.tradeid = tradeid;
		this.gid = gid;
		this.gnumber = gnumber;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getTradeid() {
		return tradeid;
	}
	public void setTradeid(int tradeid) {
		this.tradeid = tradeid;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getGnumber() {
		return gnumber;
	}
	public void setGnumber(int gnumber) {
		this.gnumber = gnumber;
	}
	
	
	
}
