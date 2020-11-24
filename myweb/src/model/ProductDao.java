package model;

import java.util.ArrayList;
import java.util.List;

public class ProductDao {
	public List<ProductBean> getProductList() {
		List<ProductBean> lists = new ArrayList<ProductBean>();
		
		lists.add(new ProductBean(1, "아이폰", 20, 300, "IT"));
		lists.add(new ProductBean(2, "갤럭시", 30, 400, "IT"));
		
		return lists;
	}
	
}
