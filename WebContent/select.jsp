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


	<div class="maincontainer">

		<div class="choice">




			<div class="row1">
				`

				<div class="mycontainer">


					<div class="card-panel teal lighten-2">


						<ul class="collapsible" data-collapsible="accordion">


							<li>
								<div class="collapsible-header">
									<i class="material-icons">filter_drama</i>Select
								</div>


								<div class="collapsible-body">










									<h5>NUMBER OF EMPLOYEES: ${arraySize}</h5>


									<form action="GetEmployeesData.do" method="GET">
										<input type="text" name="number"
											value="${sessionEmployee.number}" class="z-depth-3" />

										<button class="btn waves-effect waves-light  deep-purple"
											type="submit">
											SELECT BY # <i class="material-icons right">launch</i>
										</button>

									</form>

									<br>

									<form action="GetEmployeesData.do" method="GET">
										<!-- <input type="submit" name="next"
										value="SHOW NEXT NUMBER" /> -->

										<button class="btn waves-effect waves-light deep-purple"
											type="submit" name="next">
											SHOW NEXT # <i class="material-icons right">launch</i>
										</button>


									</form>

									<br>




									<form action="GetEmployeesData.do" method="GET">
										<!-- <input type="submit" name="prev"
										value="SHOW  PREVIOUS      " /> -->

										<button class="btn waves-effect waves-light deep-purple"
											type="submit" name="prev">
											SHOW PREV # <i class="material-icons right">launch</i>
										</button>



									</form>

									<br>













									<form action="GetEmployeesData.do" method="GET">
										<!-- <input type="submit" name="show"
										value="SEE CURRENT LIST   " /> -->
										<button class="btn waves-effect waves-light deep-purple"
											type="submit" name="show">
											SEE EMAIL LIST <i class="material-icons right">launch</i>
										</button>


									</form>

									<br>


									<form action="GetEmployeesData.do" method="GET">
										<!-- <input type="submit" name="clear"
										value="CLEAR EMAIL LIST   " /> -->

										<button class="btn waves-effect waves-light deep-purple"
											type="submit" name="clear">
											CLEAR LIST <i class="material-icons right">launch</i>
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
									<i class="material-icons">filter_drama</i>Update/Delete

								</div>


								<div class="collapsible-body">






















									<form action="GetEmployeesData.do" method="GET">
										<input type="text" name="deleteNumber" value="1" />
										<!-- <input type="submit"
										value="Delete Employee #" /> -->

										<button class="btn waves-effect waves-light  deep-purple"
											type="submit">
											Delete BY # <i class="material-icons right">launch</i>
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
											Create New <i class="material-icons right">launch</i>
										</button>


									</form>


									<br>



									<form action="UpdateEmployeesData.do" method="GET">




										<input type="text" name="number" value="1" />
										<!-- <input
										type="submit" value="Update Employee #" /> -->

										<button class="btn waves-effect waves-light  deep-purple"
											type="submit">
											Update BY # <i class="material-icons right">launch</i>
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
									<i class="material-icons">filter_drama</i>Search
								</div>


								<div class="collapsible-body">
















									<form action="GetEmployeesData.do" method="GET">
										<input type="text" name="fname" value="John" />

										<!-- <input type="submit"
										value="Display All by First Name" /> -->

										<button class="btn waves-effect waves-light  deep-purple"
											type="submit">
											BY First Name <i class="material-icons right">launch</i>
										</button>


									</form>

									<br>


									<form action="GetEmployeesData.do" method="GET">
										<input type="text" name="lname" value="Doe" />
										<!-- <input type="submit"
										value="Display All by Last Name" /> -->

										<button class="btn waves-effect waves-light  deep-purple"
											type="submit">
											By Last Name <i class="material-icons right">launch</i>
										</button>


									</form>

									<br>


									<form action="GetEmployeesData.do" method="GET">
										<input type="text" name="state" value="CO" />
										<!-- <input type="submit"
										value="Display All by STATE" /> -->

										<button class="btn waves-effect waves-light  deep-purple"
											type="submit">
											All by State <i class="material-icons right">launch</i>
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

		<div class="result">

			<div class="row">
				`

				<div class="mycontainer">


					<div class="card-panel teal lighten-2">






						<c:if test="${tableChoice=='three'}">


							<c:choose>
								<c:when test="${error == null}">

									<h2 class="z-depth-3">SELECTED EMPLOYEE:</h2>


									<table class="striped" class="z-depth-3">
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
												<!-- 	<th data-field="price">County</th> -->
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
												<%-- 	<td>${sessionEmployee.company.county}</td> --%>
												<td>${sessionEmployee.company.state}</td>
												<td>${sessionEmployee.company.zip}</td>

											</tr>

										</tbody>
									</table>






									<ul>




										<li><iframe width="500px" height="300px"
												src="https://maps.google.com/maps?q=${sessionEmployee.company.city}&hl=es;z=14&amp;output=embed">
											</iframe></li>
										<%-- <li>   <iframe width="500px" height="300px"
										src="${sessionEmployee.company.web}"></iframe>
									</li> --%>


									</ul>


									<form action="GetEmployeesData.do" method="GET">
										<!-- <input type="submit" name="add"
										value="ADD TO EMAIL LIST  " /> -->

										<button class="btn waves-effect waves-light deep-purple"
											type="submit" name="add">
											ADD TO EMAIL <i class="material-icons right">launch</i>
										</button>

									</form>








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

							<h2 class="z-depth-3">EMPLOYEES FOUND:</h2>


							<table class="striped" class="z-depth-3">

								<thead>
									<tr>
										<th data-field="id">Number</th>
										<th data-field="fn">First Name</th>
										<th data-field="ln">Last Name</th>
										<th data-field="co">Company</th>
										<th data-field="ad">Address</th>

									</tr>

								</thead>




								<c:forEach var="thisEmployee" items="${sessionSearchSet}">













									<tbody>
										<tr>



											<td>${thisEmployee.number}</td>
											<td>${thisEmployee.fname}</td>
											<td>${thisEmployee.lname}</td>
											<td>${thisEmployee.company.cName}</td>
											<td>${thisEmployee.company.address}</td>

										</tr>

									</tbody>




								</c:forEach>

							</table>

							<br>





							<form action="GetEmployeesData.do" method="GET">
								<!-- Add to Mail List : <input type="submit"
								name="addAll" value="ADD TO LIST" /> -->



								<button class="btn waves-effect waves-light  deep-purple"
									type="submit" name="addAll">
									Add All to Mail List<i class="material-icons right">launch</i>
								</button>


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



							<h3 class="z-depth-3">EMPLOYEES IN MAIL LIST:</h3>



							<table class="striped" class="z-depth-3">

								<thead>

									<tr>
										<th data-field="id">Number</th>
										<th data-field="fn">First Name</th>
										<th data-field="ln">Last Name</th>
										<th data-field="co">Company</th>
										<th data-field="web">Web Adress</th>

									</tr>

								</thead>







								<c:forEach var="thisEmployee" items="${sessionSet}">




									<tbody>
										<tr>



											<td>${thisEmployee.number}</td>
											<td>${thisEmployee.fname}</td>
											<td>${thisEmployee.lname}</td>
											<td>${thisEmployee.company.cName}</td>
											<td>${thisEmployee.company.web}</td>

										</tr>
									</tbody>



								</c:forEach>


							</table>

							<br>


							<!--   "mailto:${thisEmployee.contact.email}">  -->





							<form action="GetEmployeesData.do" method="GET">
								<!-- Send Email : <input type="submit" name="send" value="SEND EMAIL" /> -->

								<button class="btn waves-effect waves-light deep-purple"
									type="submit" name="send">
									SEND EMAIL <i class="material-icons right">launch</i>
								</button>



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

									<h3 class="z-depth-3">UPDATE EMPLOYEE:
										#${sessionEmployee.number}</h3>

									<form action="UpdateEmployeesData.do" method="POST" >


										    FIRST NAME:<input id = "field" type="text" name="fname"
											value="${sessionEmployee.fname}" /> 
											LAST NAME:<input  id = "field"
											type="text" name="lname" value="${sessionEmployee.lname}" />
										    HOME PHONE:<input id = "field" type="text" name="homephone"
											value="${sessionEmployee.contact.homePhone}" /> CELL PHONE:<input id = "field"
											type="text" name="cellphone"
											value="${sessionEmployee.contact.cellPhone}" /> EMAIL:<input id = "field"
											type="text" name="email"
											value="${sessionEmployee.contact.email}" /> COMPANY NAME:<input id = "field"
											type="text" name="cname"
											value="${sessionEmployee.company.cName}" /> COMPANY ADDRESS:<input id = "field"
											type="text" name="address"
											value="${sessionEmployee.company.address}" /> COMPANY CITY:<input id = "field"
											type="text" name="city"
											value="${sessionEmployee.company.city}" /> COMPANY COUNTY:<input id = "field"
											type="text" name="county"
											value="${sessionEmployee.company.county}" /> COMPANY SSTATE:<input id = "field"
											type="text" name="state"
											value="${sessionEmployee.company.state}" /> COMPANY ZIP:<input id = "field"
											type="text" name="zip" value="${sessionEmployee.company.zip}" />
										COMPANY WEB:<input id = "field" type="text" name="web"
											value="${sessionEmployee.company.web}" />




										<button class="btn waves-effect waves-light deep-purple"
											type="submit" name="send">
											Save Update <i class="material-icons right">launch</i>
										</button>


									</form>


									<!-- input
										type="submit" value="Update Employee" /> -->


									<%-- 	<div class="row">
											<form class="col s12" action="UpdateEmployeesData.do" method="POST">
												<div class="row">
													<div class="input-field col s6">
														<input placeholder="John" id="first_name" 
															type="text" name="fname" value="${sessionEmployee.fname}" class="validate"> 
															
															<label for="first_name">First Name</label>
													</div>
													
													
													<div class="input-field col s6">
														<input id="last_name" type="text" name="lname" value="${sessionEmployee.lname}" class="validate">
														<label for="last_name">Last Name</label>
													</div>
												
													<div class="input-field col s6">
														<input id="last_name" type="text" name="lname" value="${sessionEmployee.lname}" class="validate">
														<label for="last_name">Last Name</label>
													</div>
												</div>
												<div class="row">
													<div class="input-field col s12">
														<input id="password" type="password" class="validate">
														<label for="password">Password</label>
													</div>
												</div>
												<div class="row">
													<div class="input-field col s12">
														<input id="email" type="email" class="validate"> <label
															for="email">Email</label>
													</div>
												</div>
											</form>
										</div> --%>






























								</c:when>
							</c:choose>
						</c:if>


					</div>

				</div>
			</div>
		</div>




		<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
		<script src="js/materialize.js"></script>
		<script src="js/init.js"></script>





	</div>
</body>
</html>