package service;

import java.util.List;

import entity.Goods;
import entity.ShopCar;

public interface ShopCarDAO {

	//����Ʒ���빺�ﳵ
	public boolean addShopCar(ShopCar shop);
	//�����û�id��ѯ�乺�ﳵ����Ʒ����
    public int reNumber(int uid);
    //�����û�id��ѯ���ﳵ�и���Ʒ����Ϣ
    public List<Goods> reGoods(int uid);
    //��ѯ��Ʒ���ڲ��ڹ��ﳵ
    public boolean checkShopCar(int gid,int uid);
    //�����û�id����Ʒid��ѯ������
    
    public int checkNumber(int uid,int gid);
    //ָ���û���ָ����Ʒ������һ
    public boolean addgnumber(int gid,int uid,int number);
    //�����û�id���ع��ﳵ��Ϣ
    public List<ShopCar> reShopCar(int uid);
    
}
