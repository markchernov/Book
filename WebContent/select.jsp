<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<!DOCTYPE html>
<html>
<head>
<title>Employees Book</title>
</head>
<body>



	<h2>Select Employee Menu</h2>


	<form action="GetEmployeesData.do" method="GET">
		Search Employee by Number: <input type="text" name="number" /> <input
			type="submit" value="Get Employee Data" />
	</form>

	<br>

	<form action="GetEmployeesData.do" method="GET">
		Show Next Employee: <input type="submit" name="next" value="NEXT" />
	</form>

	<br>




	<form action="GetEmployeesData.do" method="GET">
		Show Previous Employee: <input type="submit" name="prev"
			value="PREVIOUS" />
	</form>

	<br>




	<form action="GetEmployeesData.do" method="GET">
		Add Employee to Mailing List : <input type="submit" name="add"
			value="ADD TO LIST" />
	</form>




	<br>



	<form action="GetEmployeesData.do" method="GET">
		Show Mailing List : <input type="submit" name="show" value="SHOW LIST" />
	</form>

	<br>


	<form action="GetEmployeesData.do" method="GET">
		Clear Current Mailing List: <input type="submit" name="clear"
			value="CLEAR LIST" />
	</form>

	<br>


	<h2>Delete/Add/Update Employee Menu</h2>


	<form action="GetEmployeesData.do" method="GET">
		Delete Employee by Number: <input type="text" name="deleteNumber" />
		<input type="submit" value="Delete Employee" />
	</form>

	<br>



<h3>Add Employee</h3>
	   <form:form action="GetEmployeesData.do" modelAttribute="employee">
		Create Employee: 
		<input type="text" name="fname" value="John" />
		<input type="text" name="lname" value="Doe" />
		<input type="text" name="company" value="n/a" />
		<input type="text" name="contact" value="n/a" />
		<input type="submit" value="Add Employee" />
		</form:form>


		
		<form:form action="GetEmployeesData.do" modelAttribute="employee">
			<table>
				<tr>
					<td>ISBN:</td>
					<td><form:input path="fname" /></td>
					<td><form:errors path="fname" /></td>
				</tr>
				<tr>
					<td>Title:</td>
					<td><form:input path="lname" /></td>
					<td><form:errors path="lname" /></td>
				</tr>
				
				
				
				
				
				
				
				
				
			</table>
			<input type="submit" value="Add Book" />
		    </form:form>
		






		<br>



		<form action="UpdateEmployeesData.do" method="GET" >
			Update Employee by Number: <input type="text" name="number" /> 
			<input type="submit" value="Update Employee Data" />
	    </form>

	      <br>







	<h2>Search Employee Menu</h2>



	<form action="GetEmployeesData.do" method="GET">
		Search and Display All Employees by First Name: <input type="text"
			name="fname" /> <input type="submit" value="Get Employee Data" />
	</form>

	<br>


	<form action="GetEmployeesData.do" method="GET">
		Search and Display All Employees by Last Name: <input type="text"
			name="lname" /> <input type="submit" value="Get Employee Data" />
	</form>

	<br>


	<form action="GetEmployeesData.do" method="GET">
		Search and Display All Employees by Company State: <input type="text"
			name="state" /> <input type="submit" value="Get Employee Data" />
	</form>

	<br>


	<c:if test="${tableChoice=='three'}">


		<c:choose>
			<c:when test="${error == null}">

				<h2>Current Employee:</h2>

				<ul>
					<li>Employee ID: ${sessionEmployee.number}</li>
					<li>Employee First Name: ${sessionEmployee.fname}</li>
					<li>Employee Last Name: ${sessionEmployee.lname}</li>

				</ul>



				<ul>


					<li>Employee Home Phone: ${sessionEmployee.contact.homePhone}</li>
					<li>Employee Cell Phone: ${sessionEmployee.contact.cellPhone}</li>
					<li>Employee Email: ${sessionEmployee.contact.email}</li>


				</ul>



				<ul>




					<li>Company Name: ${sessionEmployee.company.cName}</li>
					<li>Company Address: ${sessionEmployee.company.address}</li>
					<li>Company City: ${sessionEmployee.company.city}</li>
					<li>Company County: ${sessionEmployee.company.county}</li>
					<li>Company State: ${sessionEmployee.company.state}</li>
					<li>Company Zip: ${sessionEmployee.company.zip}</li>
					<li><iframe width="900px" height="600px"
							src="https://maps.google.com/maps?q=${sessionEmployee.company.city}&hl=es;z=14&amp;output=embed"></iframe></li>
					<li><iframe width="900px" height="600px"
							src="${sessionEmployee.company }"></iframe></li>


				</ul>





			</c:when>


			<c:when test="${error != null}">

				<h2>${error}</h2>


			</c:when>
		</c:choose>






	</c:if>
























	<c:if test="${tableChoice=='one'}">

		<h2>Selected by Name/State Employees:</h2>



		<c:forEach var="thisEmployee" items="${sessionSearchSet}">











			<table border="1">
				<tr>
					<th>Number</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Company</th>

				</tr>
				<tr>



					<td>${thisEmployee.number}</td>
					<td>${thisEmployee.fname}</td>
					<td>${thisEmployee.lname}</td>
					<td>${thisEmployee.company.cName}</td>

				</tr>
			</table>


		</c:forEach>

		<br>

		<form action="GetEmployeesData.do" method="GET">
			Add ALL Employees to Mailing List : <input type="submit"
				name="addAll" value="ADD TO LIST" />
		</form>



	</c:if>



	<c:if test="${tableChoice=='two'}">



		<h2>Employees in Mailing List:</h2>

		<c:forEach var="thisEmployee" items="${sessionSet}">











			<table border="1">
				<tr>
					<th>Number</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Company</th>

				</tr>
				<tr>



					<td>${thisEmployee.number}</td>
					<td>${thisEmployee.fname}</td>
					<td>${thisEmployee.lname}</td>
					<td>${thisEmployee.company.cName}</td>

				</tr>
			</table>


		</c:forEach>




		<br>





		<form action="mailto:${thisEmployee.contact.email}">
			Send Email : <input type="submit" name="send" value="SEND EMAIL" />


		</form>

		<br>

	</c:if>






	<c:if test="${tableChoice=='four'}">


		<c:choose>
			<c:when test="${error == null}">

				<h2>Current Employee:</h2>

				<ul>
					<li>Employee ID: ${sessionEmployee.number}</li>
					<li>Employee First Name: ${sessionEmployee.fname}</li>
					<li>Employee Last Name: ${sessionEmployee.lname}</li>

				</ul>



				<ul>


					<li>Employee Home Phone: ${sessionEmployee.contact.homePhone}</li>
					<li>Employee Cell Phone: ${sessionEmployee.contact.cellPhone}</li>
					<li>Employee Email: ${sessionEmployee.contact.email}</li>


				</ul>



				<ul>




					<li>Company Name: ${sessionEmployee.company.cName}</li>
					<li>Company Address: ${sessionEmployee.company.address}</li>
					<li>Company City: ${sessionEmployee.company.city}</li>
					<li>Company County: ${sessionEmployee.company.county}</li>
					<li>Company State: ${sessionEmployee.company.state}</li>
					<li>Company Zip: ${sessionEmployee.company.zip}</li>
					<li><iframe width="900px" height="600px"
							src="https://maps.google.com/maps?q=${sessionEmployee.company.city}&hl=es;z=14&amp;output=embed"></iframe></li>
					<li><iframe width="900px" height="600px"
							src="${sessionEmployee.company }"></iframe></li>


				</ul>




				<br>


				<form action="UpdateEmployeesData.do" method="POST">
					<h2>Update Employee:</h2>

					First Name:<input type="text" name="fname"
						value="${sessionEmployee.fname}" /> Last Name:<input type="text"
						name="lname" value="${sessionEmployee.lname}" /> Home Phone:<input
						type="text" name="homephone"
						value="${sessionEmployee.contact.homePhone}" /> Cell Phone:<input
						type="text" name="cellphone"
						value="${sessionEmployee.contact.cellPhone}" /> Email:<input
						type="text" name="email" value="${sessionEmployee.contact.email}" />


					Company Name:<input type="text" name="cname"
						value="${sessionEmployee.company.cName}" /> Company Address:<input
						type="text" name="address"
						value="${sessionEmployee.company.address}" /> Company City:<input
						type="text" name="city" value="${sessionEmployee.company.city}" />
					Company County:<input type="text" name="county"
						value="${sessionEmployee.company.county}" /> Company State:<input
						type="text" name="state" value="${sessionEmployee.company.state}" />
					Company Zip:<input type="text" name="zip"
						value="${sessionEmployee.company.zip}" /> Company Web:<input
						type="text" name="web" value="${sessionEmployee.company.web}" />


					<input type="submit" value="Update Employee" />
				</form>

				<br>






			</c:when>
		</c:choose>
	</c:if>















</body>
</html>