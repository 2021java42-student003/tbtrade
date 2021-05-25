package tbtrade.bean;

public class MemberBean {

	private String member_name;
	private String postal;
	private String address;
	private String tel;
	private String mail;
	private String password;

	public MemberBean(String member_name, String postal, String address, String tel, String mail, String password) {
		this.member_name = member_name;
		this.postal = postal;
		this.address = address;
		this.tel = tel;
		this.mail = mail;
		this.password = password;
	}

	public MemberBean() {

	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getPostal() {
		return postal;
	}

	public void setPostal(String postal) {
		this.postal = postal;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
