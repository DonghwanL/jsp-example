package model;

import java.util.ArrayList;
import java.util.List;

public class MyDao {
	
	public List<Product2> GetList() {
		List<Product2> lists = new ArrayList<Product2>();
		
		lists.add(new Product2("사과", 10, 2000, 0.1));
		lists.add(new Product2("오렌지", 30, 1000, 0.15));
		
		return lists;
	}
	
	public String GetToken3() {
		String result = "남성,여성";
		return result;
	}
	
	public String GetToken2() {
		String result = "제시카,티파니,효연,태연,써니";
		return result;
	}
	
	public String GetToken1() {
		String result = "";
		String[] arr = {"가나", "다라", "마바", "사아"};
		
		for (int i = 0; i < arr.length; i++) {
			if (i == arr.length - 1) {
				result += arr[i];
			} else {
				result += arr[i] + ",";
			}
		}
		
		return result;
	}
}
