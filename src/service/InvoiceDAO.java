package service;

import entity.Invoice;

public interface InvoiceDAO {

	//���뷢Ʊ��Ϣ
	public boolean invoiceAdd(Invoice invoice);
	//���뷢Ʊ��Ϣ����������
	public int invoiceAddRe(Invoice invoice);
	//���ض�Ӧ��ŵķ�Ʊ��Ϣ
	public Invoice reInvioce(int vid);
}
