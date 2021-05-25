package tbtrade.bean;

import java.io.Serializable;
import java.util.Date;

public class BookBean {
	private int book_id;
	private String book_name;
	private int price;
	private String author;
	private String publisher;
	private Date publication_date;
	private int stock;
	private int is_secondhand;
	private int under_assessing;

	public BookBean(int book_id, String book_name, int price, String author, String publisher, Date publication_date, int stock, int is_secondhand, int under_assessing) {
		this.book_id = book_id ;
		this.book_name = book_name;
		this.price = price;
		this.author = author;
		this.publisher = publisher;
		this.publication_date = publication_date;
		this.stock = stock;
		this.is_secondhand = is_secondhand;
		this.under_assessing = under_assessing;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
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

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public Date getPublication_date() {
		return publication_date;
	}

	public void setPublication_date(Date publication_date) {
		this.publication_date = publication_date;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getIs_secondhand() {
		return is_secondhand;
	}

	public void setIs_secondhand(int is_secondhand) {
		this.is_secondhand = is_secondhand;
	}

	public int getUnder_assessing() {
		return under_assessing;
	}

	public void setUnder_assessing(int under_assessing) {
		this.under_assessing = under_assessing;
	}


}
