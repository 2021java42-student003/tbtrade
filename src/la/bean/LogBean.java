package la.bean;

import java.io.Serializable;

public class LogBean implements Serializable{
	private String datetime;
	private String book_name;
	private int price;
	private int quantity;

	public LogBean(String datetime, String book_name, int price, int quantity) {
		this.datetime = datetime;
		this.book_name = book_name;
		this.price = price;
		this.quantity = quantity;
	}

	public LogBean() {

	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}
