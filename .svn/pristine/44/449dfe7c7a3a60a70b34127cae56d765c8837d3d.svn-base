package service;

import java.util.List;

import entity.Address;

public interface AddressDAO {
    //添加一个地址
	public boolean addressCreate(Address a);
	//添加一个地址并返回该地址在数据中的编号
	public int addressCre(Address a);
	//提取对应用户的地址信息
	public List<Address> reAddress(int uid);
	//提取对应编号的地址
	public Address reAddressByAid(int aid);
}
