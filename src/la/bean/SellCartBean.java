package la.bean;

import java.io.Serializable;

public class SellCartBean implements Serializable {
	private String title;
	private String author;
	private String datetime;
	private String publisher;

	public SellCartBean(String title, String author, String datetime, String publisher) {
		this.title = title;
		this.author = author;
		this.datetime = datetime;
		this.publisher = publisher;
	}

	public SellCartBean() {

	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
}
