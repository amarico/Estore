package testClassifyDAO;

import java.util.List;

import junit.framework.Assert;

import org.junit.Test;

import service.ClassifyDAO;
import service.UsersDAO;
import service_impl.ClassifyDAOImpl;
import service_impl.UsersDAOImpl;

import entity.Classify;
import entity.Users;

public class TestUsers {

	@Test
	public void Test() {

		ClassifyDAO cdao = new ClassifyDAOImpl();
		List<Classify> list = cdao.reClassify(1);
		for (Classify classify : list) {
			System.out.println(classify.getCid());
			System.out.println(classify.getCname());
			System.out.println(classify.getCparent());

		}
	}

	@Test
	public void TestR() {

		ClassifyDAO cdao = new ClassifyDAOImpl();
		Classify classify = cdao.reIdClassify(7);
		Classify rclassify = new Classify();
		rclassify = cdao.reFaClassify(classify);
		System.out.println("ha"+rclassify.getCname());
		while (rclassify.getCparent() != 0) {
			rclassify = cdao.reFaClassify(rclassify);
			System.out.println(rclassify.getCname());
		}

	}
	
	
	@Test
	public void TestRR() {

		ClassifyDAO cdao = new ClassifyDAOImpl();
		List<String> list=cdao.reList(8);
	
	  for (String string : list) {
		System.out.println(string);
	}
	  
	System.out.println(list.size());
	for(int i=list.size()-1;i>=0;i--){
		System.out.println(list.get(i));
	}
	
	}
}
