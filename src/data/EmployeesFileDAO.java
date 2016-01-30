package data;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

public class EmployeesFileDAO implements EmployeesDAO {

	private static final String filename = "WEB-INF/us-500.csv";
	
	private static final String filename2 = "WEB-INF/test.txt";

	private List<Employee> employeeList = new ArrayList<>();

	/*
	 * Use Autowired to have Spring inject an instance of an ApplicationContext
	 * into this object after creation. We will use the ApplicationContext to
	 * retrieve an InputStream so we can read from a file.
	 */

	@Autowired
	private ApplicationContext ac;

	/*
	 * The @PostConstruct method is called by Spring after object creation and
	 * dependency injection
	 */
	@PostConstruct

	public void init() {
		// Retrieve an input stream from the application context
		// rather than directly from the file system

		Company company;
		Contact contact;

		try (InputStream is = ac.getResource(filename).getInputStream();
				BufferedReader buf = new BufferedReader(new InputStreamReader(is));) {
			String line = buf.readLine();
			// String line = null; // initialize the variable
			while ((line = buf.readLine()) != null) {
				String[] tokens = line.split(",");

				String fname = tokens[0];

				String lname = tokens[1];

				String cName = tokens[2];

				String address = tokens[3];

				String city = tokens[4];
				String county = tokens[5];
				String state = tokens[6];

				String zip = tokens[7];
				String homePhone = tokens[8];
				String cellPhone = tokens[9];

				String email = tokens[10];
				String web = tokens[11];

				company = new Company(cName, address, city, county, state, zip, web);
				contact = new Contact(homePhone, cellPhone, email);

				employeeList.add(new Employee(fname, lname, company, contact));

			}
		} catch (Exception e) {
			System.err.println(e);
		}

	}

	
	
	
	
	// save employees
	
	@Override
	public void saveAll(Set<Employee> set) throws FileNotFoundException {
		// TODO Auto-generated method stub
		
	}

	
	
	
//	    public void saveAll(Set<Employee> set) throws FileNotFoundException {
//	    	
////	    		
////	    	
////	    PrintWriter pw = new PrintWriter(new FileOutputStream(filename2));
////	    
////	    InputStream os = ac.getResource(filename2);
//	    
//	    try (OutputStream os = ac.getResource(filename2).getOutputStream();
//				BufferedWriter buf = new BufferedWriter(new FileOutputStream(os));) {
//	    	
//			String line = buf.newLine();
//	    
//			PrintWriter pw = new PrintWriter(filename2);
//	    
//	        for (Employee emp : set)
//	        pw.println(emp.toString());
//	        pw.close();
//	        
//	    }   
//	     catch (Exception e) {
//			System.err.println(e);
//		} 
//	        
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// ---------------------methods-----------------------------//

	// overload

	// get employee by number

	@Override
	public Employee getEmployee(Integer number) {
		Employee e = null;

		for (Employee emp : employeeList) {
			if (emp.getNumber() == number) {
				e = emp;
				break;
			}
		}
		return e;
	}

	// get one employee by first name

	@Override
	public Set<Employee> getAllEmployeesByFirstName(String fname) {

		Set<Employee> eSet = new HashSet<>();
		for (Employee emp : employeeList) {
			if ((emp.getFname().trim().equals(fname.trim()))) {
				eSet.add(emp);

			}
			continue;
		}

		return eSet;
	}

	// get one employee by number last name

	@Override
	public Set<Employee> getAllEmployeesByLastName(String lname) {

		Set<Employee> eSet = new HashSet<>();
		for (Employee emp : employeeList) {
			if ((emp.getLname().trim().equals(lname.trim()))) {
				eSet.add(emp);

			}
			continue;
		}
		return eSet;
	}

	// get all employee by state

	@Override
	public Set<Employee> getAllEmployeeByState(String state) {

		Set<Employee> eSet = new HashSet<>();
		for (Employee emp : employeeList) {
			if ((emp.getCompany().getState().trim().equals(state.trim()))) {
				eSet.add(emp);

			}

			continue;
		}
		return eSet;
	}

	// get all employees

	@Override
	public List<Employee> getAllEmployees() {
		return employeeList;
	}

	// ---------------------------------------------------------------------------------------------------------------

	// add employee

	@Override
	public void addEmployee(Employee emp) {

		employeeList.add(emp);
	}

	// delete employee

	@Override
	public void deleteEmployee(Employee emp) {
		employeeList.remove(emp);
	}





	
	

}
