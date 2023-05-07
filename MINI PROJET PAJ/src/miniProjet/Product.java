package miniProjet;

public class Product {
	
	public  String nameproduct ;
	public String price;
	public String category;
	public String quantity;
	
	public Product(String nameproduct, String price, String category, String quantity) {
		super();
		this.nameproduct = nameproduct;
		this.price = price;
		this.category = category;
		this.quantity = quantity;
	}
	
	
	
	
	public Product() {
		super();
	}


	public String getNameproduct() {
		return nameproduct;
	}
	public void setNameproduct(String nameproduct) {
		this.nameproduct = nameproduct;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	
	

}
