<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no" />
<title>Employees Book</title>

<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="css/materialize.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<link href="css/style.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<link href="css/animate.css" type="text/css" rel="stylesheet" />

</head>



<body>

	<nav>
		<div class="nav-wrapper deep-purple">
			<a href="#" class="brand-logo center">Contact Book </a>
			<ul id="nav-mobile" class="left hide-on-med-and-down">
				<li><a href="index.html">Home</a></li>
				<li><a href="index.html">About</a></li>
				<li><a href="index.html">Help</a></li>
			</ul>
		</div>
	</nav>




	<div class="choice">




		<div class="row1">
			`

			<div class="mycontainer">


				<div class="card-panel teal lighten-2">


					<ul class="collapsible" data-collapsible="accordion">


						<li>
							<div class="collapsible-header">
								<i class="material-icons">filter_drama</i>Select Employee
							</div>


							<div class="collapsible-body">










								<h6>Number of Employees: ${arraySize}</h6>


								<form action="GetEmployeesData.do" method="GET">
									<input type="text" name="number"
										value="${sessionEmployee.number}" />

									<button class="btn waves-effect waves-light  deep-purple"
										type="submit">
										SELECT BY NUMBER <i class="material-icons right">launch</i>
									</button>

								</form>

								<br>

								<form action="GetEmployeesData.do" method="GET">
									<!-- <input type="submit" name="next"
										value="SHOW NEXT NUMBER" /> -->

									<button class="btn waves-effect waves-light deep-purple"
										type="submit" name="next">
										SHOW NEXT NUMBER <i class="material-icons right">launch</i>
									</button>


								</form>

								<br>




								<form action="GetEmployeesData.do" method="GET">
									<!-- <input type="submit" name="prev"
										value="SHOW  PREVIOUS      " /> -->

									<button class="btn waves-effect waves-light deep-purple"
										type="submit" name="prev">
										SHOW PREV NUMBER <i class="material-icons right">launch</i>
									</button>



								</form>

								<br>




								<form action="GetEmployeesData.do" method="GET">
									<!-- <input type="submit" name="add"
										value="ADD TO EMAIL LIST  " /> -->

									<button class="btn waves-effect waves-light deep-purple"
										type="submit" name="add">
										ADD TO EMAIL LIST <i class="material-icons right">launch</i>
									</button>

								</form>




								<br>



								<form action="GetEmployeesData.do" method="GET">
									<!-- <input type="submit" name="show"
										value="SEE CURRENT LIST   " /> -->
									<button class="btn waves-effect waves-light deep-purple"
										type="submit" name="show">
										SEE CURRENT LIST <i class="material-icons right">launch</i>
									</button>


								</form>

								<br>


								<form action="GetEmployeesData.do" method="GET">
									<!-- <input type="submit" name="clear"
										value="CLEAR EMAIL LIST   " /> -->

									<button class="btn waves-effect waves-light deep-purple"
										type="submit" name="clear">
										CLEAR EMAIL LIST <i class="material-icons right">launch</i>
									</button>

								</form>

								<br>




							</div>
						</li>
					</ul>


				</div>
			</div>
		</div>





		<div class="row1">
			`

			<div class="mycontainer">


				<div class="card-panel teal lighten-2">


					<ul class="collapsible" data-collapsible="accordion">


						<li>
							<div class="collapsible-header">
								<i class="material-icons">filter_drama</i>Create/Update/Delete
								Employee
							</div>


							<div class="collapsible-body">






















								<form action="GetEmployeesData.do" method="GET">
									<input type="text" name="deleteNumber" value="1" />
									<!-- <input type="submit"
										value="Delete Employee #" /> -->

									<button class="btn waves-effect waves-light  deep-purple"
										type="submit">
										Delete Employee BY NUMBER <i class="material-icons right">launch</i>
									</button>


								</form>

								<br>

								<form action="ValidateEmployeesData.do" method="POST">
									<input type="text" name="fname" value="John" /> <input
										type="text" name="lname" value="Doe" />
									<!-- <input
										type="submit" value="Create Employee" /> -->

									<button class="btn waves-effect waves-light  deep-purple"
										type="submit">
										Create Employee <i class="material-icons right">launch</i>
									</button>


								</form>


								<br>



								<form action="UpdateEmployeesData.do" method="GET">




									<input type="text" name="number" value="1" /> <!-- <input
										type="submit" value="Update Employee #" /> -->
										
										<button class="btn waves-effect waves-light  deep-purple"
							             type="submit">
							             Update Employee BY NUMBER <i class="material-icons right">launch</i>
						                </button>
										
										
								</form>

								<br>




							</div>
						</li>
					</ul>


				</div>
			</div>
		</div>






		<div class="row1">
			`

			<div class="mycontainer">


				<div class="card-panel teal lighten-2">


					<ul class="collapsible" data-collapsible="accordion">


						<li>
							<div class="collapsible-header">
								<i class="material-icons">filter_drama</i>Search Employee
							</div>


							<div class="collapsible-body">
















								<form action="GetEmployeesData.do" method="GET">
									<input type="text" name="fname" value="John" />

									<!-- <input type="submit"
										value="Display All by First Name" /> -->

									<button class="btn waves-effect waves-light  deep-purple"
										type="submit">
										Display All by First Name <i class="material-icons right">launch</i>
									</button>


								</form>

								<br>


								<form action="GetEmployeesData.do" method="GET">
									<input type="text" name="lname" value="Doe" />
									<!-- <input type="submit"
										value="Display All by Last Name" /> -->

									<button class="btn waves-effect waves-light  deep-purple"
										type="submit">
										Display All by Last Name <i class="material-icons right">launch</i>
									</button>


								</form>

								<br>


								<form action="GetEmployeesData.do" method="GET">
									<input type="text" name="state" value="CO" />
									<!-- <input type="submit"
										value="Display All by STATE" /> -->

									<button class="btn waves-effect waves-light  deep-purple"
										type="submit">
										Display All by State <i class="material-icons right">launch</i>
									</button>

								</form>

								<br>




							</div>
						</li>
					</ul>


				</div>
			</div>
		</div>



	</div>


	<div class="row">
		`

		<div class="mycontainer">


			<div class="card-panel teal lighten-2">






				<c:if test="${tableChoice=='three'}">


					<c:choose>
						<c:when test="${error == null}">

							<h2>Current Employee:</h2>


							<table>
								<thead>
									<tr>
										<th data-field="id">Employee ID</th>
										<th data-field="name">First Name</th>
										<th data-field="price">Last Name</th>
										<th data-field="price">Home Phone</th>
										<th data-field="price">Cell Phone</th>
										<th data-field="price">Email</th>
										<th data-field="price">Company</th>
										<th data-field="price">Address</th>
										<th data-field="price">City</th>
										<th data-field="price">County</th>
										<th data-field="price">State</th>
										<th data-field="price">Zip</th>

									</tr>
								</thead>

								<tbody>
									<tr>
										<td>${sessionEmployee.number}</td>
										<td>${sessionEmployee.fname}</td>
										<td>${sessionEmployee.lname}</td>
										<td>${sessionEmployee.contact.homePhone}</td>
										<td>${sessionEmployee.contact.cellPhone}</td>
										<td>${sessionEmployee.contact.email}</td>
										<td>${sessionEmployee.company.cName}</td>
										<td>${sessionEmployee.company.address}</td>
										<td>${sessionEmployee.company.city}</td>
										<td>${sessionEmployee.company.county}</td>
										<td>${sessionEmployee.company.state}</td>
										<td>${sessionEmployee.company.zip}</td>

									</tr>
									<%-- <tr>
										<td><iframe width="500px" height="300px"
										src="https://maps.google.com/maps?q=${sessionEmployee.company.city}&hl=es;z=14&amp;output=embed"></iframe></td>
										
									</tr>
									<tr>
										<td><iframe width="500px" height="300px"
										src="${sessionEmployee.company.web}"></td>
									</tr> --%>
								</tbody>
							</table>






							<ul>




								<li><iframe width="500px" height="300px"
										src="https://maps.google.com/maps?q=${sessionEmployee.company.city}&hl=es;z=14&amp;output=embed">
									</iframe> <iframe width="500px" height="300px"
										src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSqVbwe1kAqPVjlx3tu9GLkQbeOZroWRNQbY4TW3Be8ulsLQNWG"></iframe>
								</li>


							</ul>






						</c:when>


						<c:when test="${error != null}">

							<h2>${error}</h2>


						</c:when>
					</c:choose>






				</c:if>








			</div>
		</div>
	</div>







	<div class="row">
		`

		<div class="mycontainer">


			<div class="card-panel teal lighten-2">









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




			</div>
		</div>
	</div>








	<div class="row">
		`

		<div class="mycontainer">


			<div class="card-panel teal lighten-2">






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


					<!--   "mailto:${thisEmployee.contact.email}">  -->





					<form action="GetEmployeesData.do" method="GET">
						Send Email : <input type="submit" name="send" value="SEND EMAIL" />


					</form>

					<br>

				</c:if>



			</div>
		</div>
	</div>




	<div class="row">
		`

		<div class="mycontainer">


			<div class="card-panel teal lighten-2">






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


								<li>Employee Home Phone:
									${sessionEmployee.contact.homePhone}</li>
								<li>Employee Cell Phone:
									${sessionEmployee.contact.cellPhone}</li>
								<li>Employee Email: ${sessionEmployee.contact.email}</li>


							</ul>



							<ul>




								<li>Company Name: ${sessionEmployee.company.cName}</li>
								<li>Company Address: ${sessionEmployee.company.address}</li>
								<li>Company City: ${sessionEmployee.company.city}</li>
								<li>Company County: ${sessionEmployee.company.county}</li>
								<li>Company State: ${sessionEmployee.company.state}</li>
								<li>Company Zip: ${sessionEmployee.company.zip}</li>
								<li><iframe width="500px" height="300px"
										src="https://maps.google.com/maps?q=${sessionEmployee.company.city}&hl=es;z=14&amp;output=embed"></iframe></li>
								<li><iframe width="500px" height="300px"
										src="${sessionEmployee.company }"></iframe></li>


							</ul>




							<br>


							<form action="UpdateEmployeesData.do" method="POST">
								<h2>Update Employee:</h2>

								First Name:<input type="text" name="fname"
									value="${sessionEmployee.fname}" /> Last Name:<input
									type="text" name="lname" value="${sessionEmployee.lname}" />
								Home Phone:<input type="text" name="homephone"
									value="${sessionEmployee.contact.homePhone}" /> Cell Phone:<input
									type="text" name="cellphone"
									value="${sessionEmployee.contact.cellPhone}" /> Email:<input
									type="text" name="email"
									value="${sessionEmployee.contact.email}" /> Company Name:<input
									type="text" name="cname"
									value="${sessionEmployee.company.cName}" /> Company Address:<input
									type="text" name="address"
									value="${sessionEmployee.company.address}" /> Company City:<input
									type="text" name="city" value="${sessionEmployee.company.city}" />
								Company County:<input type="text" name="county"
									value="${sessionEmployee.company.county}" /> Company State:<input
									type="text" name="state"
									value="${sessionEmployee.company.state}" /> Company Zip:<input
									type="text" name="zip" value="${sessionEmployee.company.zip}" />
								Company Web:<input type="text" name="web"
									value="${sessionEmployee.company.web}" /> <input type="submit"
									value="Update Employee" />
							</form>

							<br>






						</c:when>
					</c:choose>
				</c:if>

			</div>
		</div>
	</div>




	<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script src="js/materialize.js"></script>
	<script src="js/init.js"></script>






</body>
</html>