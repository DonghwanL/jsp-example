package model;

public class Product2 {
	private String name;
	private double qty;
	private double price;
	private double discount;
	
	
	public Product2(String name, double qty, double price, double discount) {
		super();
		this.name = name;
		this.qty = qty;
		this.price = price;
		this.discount = discount;
	}

	public Product2() {}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public double getQty() {
		return qty;
	}


	public void setQty(double qty) {
		this.qty = qty;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public double getDiscount() {
		return discount;
	}


	public void setDiscount(double discount) {
		this.discount = discount;
	}
	
}
