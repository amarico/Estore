package service;

import java.util.List;

import entity.Address;

public interface AddressDAO {
    //���һ����ַ
	public boolean addressCreate(Address a);
	//���һ����ַ�����ظõ�ַ�������еı��
	public int addressCre(Address a);
	//��ȡ��Ӧ�û��ĵ�ַ��Ϣ
	public List<Address> reAddress(int uid);
	//��ȡ��Ӧ��ŵĵ�ַ
	public Address reAddressByAid(int aid);
}
