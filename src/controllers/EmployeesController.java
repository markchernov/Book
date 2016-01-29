package controllers;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import data.Employee;
import data.EmployeesDAO;

//  set attributes for session: current employee object, array of chosen employees, counter for prev/next button and array for temporary search results

@Controller
@SessionAttributes({ "sessionEmployee", "sessionSet", "sessionCounter", "sessionSearchSet" })

public class EmployeesController {
	@Autowired
	private EmployeesDAO employeeDao;

	// initialize objects in the session

	@ModelAttribute("sessionEmployee")
	public Employee initSessionEmployee() {

		Employee emp = employeeDao.getEmployee(1);

		return emp;
	}

	@ModelAttribute("sessionSet")
	public Set<Employee> initSessionArray() {
		Set<Employee> sessionSet = new HashSet<>();
		return sessionSet;
	}

	@ModelAttribute("sessionCounter")
	public int initSessionCounter() {
		int sessionCounter = 1;
		return sessionCounter;
	}

	@ModelAttribute("sessionSearchSet")
	public Set<Employee> initSessionSearchArray() {
		Set<Employee> sessionSearchSet = new HashSet<>();
		return sessionSearchSet;
	}

	// load up original view on the first call
	@RequestMapping(path = "StartEmployeesData.do", params = "start", method = RequestMethod.GET)

	public ModelAndView init(@ModelAttribute("sessionEmployee") Employee localSessionEmployee) {

		ModelAndView mv = new ModelAndView();

		System.out.println(data.Employee.instcount);
		System.out.println(employeeDao.getEmployee(500));
		System.out.println(employeeDao.getAllEmployees().size());

		mv.setViewName("select.jsp");

		mv.addObject("sessionEmployee", employeeDao.getEmployee((1)));

		return mv;

	}

	
//	@RequestMapping(path="ValidateEmployeesData.do",
//			method=RequestMethod.POST)
//			public ModelAndView addEmployee() {
//			// Prime the model with an empty book object so that
//			// the form can populate it with values
//			Employee emp = new Employee("John", "Doe");
//			return new ModelAndView("select.jsp", "employee", emp);
//			
//			}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// get employee by number

	@RequestMapping(path = "GetEmployeesData.do", params = "number", method = RequestMethod.GET)

	public ModelAndView getByNumber(@RequestParam("number") Integer num) {

		ModelAndView mv = new ModelAndView();

		if (employeeDao.getEmployee(num) != null) {

			mv.setViewName("select.jsp");

			mv.addObject("tableChoice", "three");

			mv.addObject("sessionEmployee", employeeDao.getEmployee(num)); // updates
																			// the
																			// session

			return mv;
		}

		else {

			mv.setViewName("select.jsp");

			mv.addObject("tableChoice", "three");

			mv.addObject("error", "Employee not Found");
		}

		return mv;
	}

	// display next employee from the DAO, starting at last employee on the
	// screen

	@RequestMapping(path = "GetEmployeesData.do", params = "next", method = RequestMethod.GET)

	public ModelAndView getNextEmployee(@ModelAttribute("sessionEmployee") Employee localSessionEmployee,
			@ModelAttribute("sessionCounter") int localSessionCounter) {

		System.out.println(" in Next Emp");
		ModelAndView mv = new ModelAndView();

		if (employeeDao.getEmployee(localSessionEmployee.getNumber()+1) != null) {

			mv.setViewName("select.jsp");

			mv.addObject("tableChoice", "three");

			mv.addObject("sessionEmployee", employeeDao.getEmployee(localSessionEmployee.getNumber()+1)); // updates
																			// the
																			// session

			return mv;
		}

		else {

			mv.setViewName("select.jsp");

			mv.addObject("tableChoice", "three");

			mv.addObject("error", "Employee not Found");
		}

		return mv;
	}

	// display previous employee from the DAO, starting at last employee on the
	// screen

	@RequestMapping(path = "GetEmployeesData.do", params = "prev", method = RequestMethod.GET)

	public ModelAndView getPrevEmployee(@ModelAttribute("sessionEmployee") Employee localSessionEmployee,
			@ModelAttribute("sessionCounter") int localSessionCounter) {

		System.out.println(" in Prev Emp");
		ModelAndView mv = new ModelAndView();

		if (employeeDao.getEmployee(localSessionEmployee.getNumber()- 1) != null) {

			mv.setViewName("select.jsp");

			mv.addObject("tableChoice", "three");

			mv.addObject("sessionEmployee", employeeDao.getEmployee(localSessionEmployee.getNumber()- 1)); // updates
																			// the
																			// session

			return mv;
		}

		else {

			mv.setViewName("select.jsp");

			mv.addObject("tableChoice", "three");

			mv.addObject("error", "Employee not Found");
		}

		return mv;
	}

	// save up chosen employee to a ArrayList with add button
	@RequestMapping(path = "GetEmployeesData.do", params = "add", method = RequestMethod.GET)

	public ModelAndView saveChosenEmployee(@ModelAttribute("sessionEmployee") Employee localSessionEmployee,
			@ModelAttribute("sessionSet") Set<Employee> localSessionSet) {

		System.out.println("Adding to email list");
		System.out.println(localSessionEmployee);

		ModelAndView mv = new ModelAndView();

		localSessionSet.add(localSessionEmployee);

		mv.setViewName("select.jsp");

		mv.addObject("sessionArray", localSessionSet);

		return mv;

	}

	// clear current mailing list

	@RequestMapping(path = "GetEmployeesData.do", params = "clear", method = RequestMethod.GET)

	// don't specify parameter at@RequestParam if not using it

	public ModelAndView displayMailingList(@ModelAttribute("sessionSet") Set<Employee> localSessionSet) {
		ModelAndView mv = new ModelAndView();

		mv.setViewName("select.jsp");

		localSessionSet.clear();

		mv.addObject("sessionSet", localSessionSet);

		return mv;
	}

	// mailing list display
	@RequestMapping(path = "GetEmployeesData.do", params = "show", method = RequestMethod.GET)

	public ModelAndView displayMailList(@ModelAttribute("sessionSet") Set<Employee> localSessionSet) {

		ModelAndView mv = new ModelAndView();

		mv.setViewName("select.jsp");

		mv.addObject("tableChoice", "two");

		mv.addObject("sessionSet", localSessionSet);

		return mv;

	}

	// search all employees by first name , save in the new arrayList in
	// the session and send to display

	@RequestMapping(path = "GetEmployeesData.do", params = "fname", method = RequestMethod.GET)

	public ModelAndView getEmployeeFirstName(@RequestParam("fname") String fname,
			@ModelAttribute("sessionSearchSet") Set<Employee> localSessionSearchSet) {
		ModelAndView mv = new ModelAndView();

		localSessionSearchSet = employeeDao.getAllEmployeesByFirstName(fname);

		mv.setViewName("select.jsp");
		mv.addObject("tableChoice", "one"); // additional attribute to send to
		// display to call the right table
		mv.addObject("sessionSearchSet", localSessionSearchSet);

		return mv;
	}

	// search all employees by last name save in the new arrayList in the
	// session and send to display

	@RequestMapping(path = "GetEmployeesData.do", params = "lname", method = RequestMethod.GET)

	public ModelAndView getEmployeeLastName(@RequestParam("lname") String lname,
			@ModelAttribute("sessionSearchSet") Set<Employee> localSessionSearchSet) {
		ModelAndView mv = new ModelAndView();

		localSessionSearchSet = employeeDao.getAllEmployeesByLastName(lname);

		mv.setViewName("select.jsp");

		mv.addObject("tableChoice", "one"); // additional attribute to send to
		// display to call the right table
		mv.addObject("sessionSearchSet", localSessionSearchSet);

		return mv;
	}

	// search by all employees by state

	@RequestMapping(path = "GetEmployeesData.do", params = "state", method = RequestMethod.GET)

	public ModelAndView getByState(@RequestParam("state") String state,
			@ModelAttribute("sessionSearchSet") Set<Employee> localSessionSearchSet) {

		ModelAndView mv = new ModelAndView();
		localSessionSearchSet = employeeDao.getAllEmployeeByState(state);

		mv.setViewName("select.jsp");

		mv.addObject("tableChoice", "one"); // additional attribute to send to
		// display to call the right table
		mv.addObject("sessionSearchSet", localSessionSearchSet);

		return mv;
	}

	// save up chosen by Name/State employees to a Mail HashSet with add all
	// button
	@RequestMapping(path = "GetEmployeesData.do", params = "addAll", method = RequestMethod.GET)

	public ModelAndView saveAllChosenEmployee(@ModelAttribute("sessionSet") Set<Employee> localSessionSet,
			@ModelAttribute("sessionSearchSet") Set<Employee> localSessionSearchSet) {

		System.out.println("Adding all employees to email list");

		ModelAndView mv = new ModelAndView();

		localSessionSet.addAll(localSessionSearchSet);

		mv.setViewName("select.jsp");

		mv.addObject("sessionSet", localSessionSet);

		return mv;

	}

	// ----------------------------------------------------------------------------------------

	// create new object of employee

	@RequestMapping(value = "GetEmployeesData.do", method = RequestMethod.POST)
	public ModelAndView addEmployee(@RequestParam("fname") String fname, @RequestParam("lname") String lname)
	{

		Employee emp = new Employee(fname, lname);

		ModelAndView mv = new ModelAndView();

		employeeDao.addEmployee(emp);

		mv.setViewName("select.jsp");

		mv.addObject("tableChoice", "three");

		mv.addObject("sessionEmployee", employeeDao.getEmployee(data.Employee.instcount - 1));

		return mv;

	}

	// delete object of employee

	@RequestMapping(path = "GetEmployeesData.do", params = "deleteNumber", method = RequestMethod.GET)

	public ModelAndView deleteEmployee(@ModelAttribute("sessionEmployee") Employee localSessionEmployee,
			@RequestParam("deleteNumber") Integer num) {

		employeeDao.deleteEmployee(employeeDao.getEmployee(num));
		ModelAndView mv = new ModelAndView();
		mv.setViewName("select.jsp");
		return mv;
	}

	// ----------------------------------------------------------------------------------------
	// update employee by number

	// get employee first and display at table 4

	@RequestMapping(path = "UpdateEmployeesData.do", params = "number", method = RequestMethod.GET)

	public ModelAndView updateByNumber(@RequestParam("number") Integer num) {

		ModelAndView mv = new ModelAndView();

		if (employeeDao.getEmployee(num) != null) {

			mv.setViewName("select.jsp");

			mv.addObject("tableChoice", "four");

			mv.addObject("sessionEmployee", employeeDao.getEmployee(num)); // updates
			// the
			// session

			return mv;
		}

		else {

			mv.setViewName("select.jsp");

			mv.addObject("tableChoice", "three");

			mv.addObject("error", "Employee not Found");
			return mv;
		}

	}

	// get employee
	// first and
	// display at table 4

	@RequestMapping(path = "UpdateEmployeesData.do", method = RequestMethod.POST)

	public ModelAndView updatetByNumber(@ModelAttribute("sessionEmployee") Employee localSessionEmployee, @RequestParam("fname") String fname,
			@RequestParam("lname") String lname, @RequestParam("homephone") String homephone,
			@RequestParam("cellphone") String cellphone, @RequestParam("email") String email,
			@RequestParam("cname") String cname, @RequestParam("address") String address,
			@RequestParam("city") String city, @RequestParam("county") String county,
			@RequestParam("state") String state, @RequestParam("zip") String zip, @RequestParam("web") String web) {

		ModelAndView mv = new ModelAndView();

		if (employeeDao.getEmployee(localSessionEmployee.getNumber()) != null) {

			mv.setViewName("select.jsp");

			mv.addObject("tableChoice", "three");
			
			employeeDao.getEmployee(localSessionEmployee.getNumber()).setFname(fname);
			employeeDao.getEmployee(localSessionEmployee.getNumber()).setLname(lname);
			employeeDao.getEmployee(localSessionEmployee.getNumber()).getContact().setHomePhone(homephone);
			employeeDao.getEmployee(localSessionEmployee.getNumber()).getContact().setCellPhone(cellphone);
			;
			employeeDao.getEmployee(localSessionEmployee.getNumber()).getContact().setEmail(email);
			employeeDao.getEmployee(localSessionEmployee.getNumber()).getCompany().setcName(cname);
			employeeDao.getEmployee(localSessionEmployee.getNumber()).getCompany().setAdress(address);
			employeeDao.getEmployee(localSessionEmployee.getNumber()).getCompany().setCity(city);
			employeeDao.getEmployee(localSessionEmployee.getNumber()).getCompany().setCounty(county);
			employeeDao.getEmployee(localSessionEmployee.getNumber()).getCompany().setState(state);
			employeeDao.getEmployee(localSessionEmployee.getNumber()).getCompany().setZip(zip);
			employeeDao.getEmployee(localSessionEmployee.getNumber()).getCompany().setWeb(web);

			mv.addObject("sessionEmployee", localSessionEmployee); // updates
																				// the
																				// session

			return mv;
		}

		else {

			mv.setViewName("select.jsp");

			mv.addObject("tableChoice", "three");

			mv.addObject("error", "Employee not Found");
			return mv;
		}

	}

}
