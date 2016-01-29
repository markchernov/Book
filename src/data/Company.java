package data;

public class Company {

	private String cname;

	private String address;
	private String city;
	private String county;
	private String state;
	private String zip;
	private String web;

	// noarg constructor
	public Company() {
		
		this(" "," "," "," "," "," "," ");
		
		
		
	}

	public Company(String cname, String address, String city, String county, String state, String zip, String web) {
		super();

		this.cname = cname;
		this.address = address;
		this.city = city;
		this.county = county;
		this.state = state;
		this.zip = zip;
		this.web = web;
	}

	public String getcName() {
		return cname;
	}

	public String getAddress() {
		return address;
	}

	public String getCity() {
		return city;
	}

	public String getCounty() {
		return county;
	}

	public String getState() {
		return state;
	}

	public String getZip() {
		return zip;
	}

	public String getWeb() {
		return web;
	}
	
	
	public void setcName(String cname) {
		this.cname = cname;
	}

	public void setAdress(String adress) {
		this.address = adress;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public void setWeb(String web) {
		this.web = web;
	}

	@Override
	public String toString() {
		return "Company [cName=" + cname + ", address=" + address + ", city=" + city + ", county=" + county + ", state="
				+ state + ", zip=" + zip + ", web=" + web + "]";
	}
	
	
	
}
