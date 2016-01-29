package data;

import java.util.List;
import java.util.Set;

public interface EmployeesDAO {

	// Create

	void addEmployee(Employee employee);

	// Read and Update

	public Employee getEmployee(Integer number);
	
	

	// get all by

	public Set<Employee> getAllEmployeeByState(String state);

	public Set<Employee> getAllEmployeesByFirstName(String fname);

	public Set<Employee> getAllEmployeesByLastName(String lname);

	public List<Employee> getAllEmployees();

	// Delete

	void deleteEmployee(Employee employee);

}
