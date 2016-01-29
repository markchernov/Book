package data;

public class Contact {

	private String homephone;
	private String cellphone;
	private String email;

	public Contact() {
		
		this(" "," "," ");
	}

	public Contact(String homephone, String cellphone, String email) {
		super();
		this.homephone = homephone;
		this.cellphone = cellphone;
		this.email = email;
	}

	public String getHomePhone() {
		return homephone;
	}

	public String getCellPhone() {
		return cellphone;
	}

	public String getEmail() {
		return email;
	}

	public void setHomePhone(String homephone) {
		this.homephone = homephone;
	}

	public void setCellPhone(String cellphone) {
		this.cellphone = cellphone;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Contact [homePhone=" + homephone + ", cellPhone=" + cellphone + ", email=" + email + "]";
	}

}
