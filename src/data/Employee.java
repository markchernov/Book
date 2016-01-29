package data;

public class Employee {

	
	public static int instcount = 1;
	
	private int number;
	
	private String fname;
	private String lname;

	private Company company;

	private Contact contact;

	// noarg constructor
	public Employee() {
		
		
	};

	
	public Employee( String fname, String lname){
		
		
		this(fname, lname, new Company(), new Contact());
	
	
	}
	
	public Employee(String fname, String lname, Company company, Contact contact) {
		super();
		this.number = instcount;
		this.fname = fname;
		this.lname = lname;
		this.company = company;
		this.contact = contact;

		instcount++; 
		
	}

	public int getNumber() {
		return number;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public Company getCompany() {
		return company;
	}
	
	public Contact getContact() {
		return contact;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public void setCompany(Company company) {
		this.company = company;
	}
	
	public void setContact(Contact contact) {
		this.contact = contact;
	}

	@Override
	public String toString() {
		return "Employee [number=" + number + ", fname=" + fname + ", lname=" + lname + ", company=" + company
				+ ", contact=" + contact + "]";
	}

}
