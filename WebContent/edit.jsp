<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="edu.jhu.sample.results.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/includes/header.html" />

<!-- Template from: https://www.w3schools.com/w3css/w3css_templates.asp -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">

<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box
}

body, html {
	height: 100%
}

/* Full-width input fields */
input[type=text], input[type=number], input[type=date], select {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=number], input[type=date] {
	text-align: right;
}

input[type=text]:focus, input[type=number]:focus, input[type=date]:focus, select:focus {
	background-color: #ddd;
	outline: none;
}

hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

button:hover {
	opacity: 1;
}

.bgimg {
	background-image: url('images/add.jpg');
	min-height: 100%;
	background-position: center;
	background-size: cover;
}

h1, label {
	color: white;
}

/* Extra styles for the cancel button */
.cancelbtn {
	padding: 14px 20px;
	background-color: #f44336;
}

/* Float cancel and login buttons and add an equal width */
.cancelbtn, .edit {
	float: left;
	width: 50%;
}

/* Add padding to container elements */
.container, .inline {
	margin: auto;
	padding: 16px;
	width: 60%; 
}

/* Add padding to form elements */
.inline {
	margin: auto;
	padding: 24px;
	width: 50%; 
	float: left;
}

/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

/* Change styles for cancel button and login button on extra small screens */
@media screen and (max-width: 300px) {
	.cancelbtn, .loginbtn {
		width: 100%;
	}
}
</style>

<body>
	<div class="bgimg w3-display-container">

		<form method="POST" action="ServletController">
			<div class="container">
				<p style="color: red">${errorText}</p>

				<h1>Edit Expense</h1>
				<hr>
				
				<div class="inline">
				<label for="note"><b>Note</b></label>
				<select name="note" required>
					<optgroup label="Advertising">
						<option>Consultation Fee</option>
						<option>Service Fee</option>
					</optgroup>
					<optgroup label="Car & Truck Expenses">
						<option>Gas</option>
						<option>Mileage</option>
						<option>Repairs</option>
						<option>Vehicle Insurance</option>
						<option>Vehicle Licensing</option>
					</optgroup>
					<optgroup label="Contractors">
						<option>Contractors</option>
					</optgroup>
					<optgroup label="Education and Training">
						<option>Books</option>
						<option>Certification</option>
						<option>Subscription</option>
					</optgroup>
					<optgroup label="Employee Benefits">
						<option>Accident Insurance</option>
						<option>Health Insurance</option>
						<option>Life Insurance</option>
					</optgroup>
					<optgroup label="Meals & Entertainment">
						<option>Movies</option>
						<option>CD</option>
						<option>Dine Out</option>
					</optgroup>
					<optgroup label="Office Expenses & Postage">
						<option>Hardware</option>
						<option>Office Supplies</option>
						<option>Packaging</option>
						<option>Postage</option>
						<option>Printing</option>
						<option>Shipping & Couriers</option>
						<option>Software</option>
					</optgroup>
					<optgroup label="Other Expenses">
						<option>Bank Fees</option>
						<option>Business Insurance</option>
						<option>Commissions</option>
						<option>Deprecation</option>
						<option>Interest - Mortgage</option>
						<option>Interest - Other</option>
						<option>Online Services</option>
						<option>Reference Materials</option>
						<option>Repairs & Maintenance</option>
						<option>Subscriptions/Dues/Memberships</option>
						<option>Taxes & Licenses</option>
						<option>Wages</option>
					</optgroup>
					<optgroup label="Professional Services">
						<option>Accounting</option>
						<option>Legal Fees</option>
						<option>Equipment</option>
						<option>Machinery</option>
						<option>Office Space</option>
						<option>Vehicles</option>
					</optgroup>
					<optgroup label="Supplies">
						<option>Supplies</option>
					</optgroup>
					<optgroup label="Travel">
						<option>Airfare</option>
						<option>Hotel/Lodging/Accommodation</option>
					</optgroup>
					<optgroup label="Utilities">
						<option>Gas & Electrical</option>
						<option>Phone</option>
					</optgroup>
					<optgroup label="Personal">
						<option>Personal</option>
						<option>Other</option>
					</optgroup>
				</select>
				
				<label for="description"><b>Description</b></label> 
				<input type="text" placeholder="Expense Description" name="description"
					value="${expense.description}" required>
				</div>
				
				<div class="inline">
				<label for="date"><b>Date</b></label> 
				<input class="date" type="date" placeholder="MM-DD-YYYY" data-date-split-input="true"
					name="date" value="${expense.date}" required>

				<label for="amount"><b>Amount</b></label> 
				<input type="number" placeholder="Expense Amount" name="amount"
					value="${expense.amount}" min="0" step="0.01"
					data-number-to-fixed="2" data-number-stepfactor="100" required>
				</div>

				<br> 
				
				<div class="clearfix">
					<button type="reset" class="cancelbtn">Reset</button>
					<button type="submit" class="editbtn" name="action"
						value="EditExpense">Edit Expense</button>
				</div>
			</div>
		</form>

	</div>
</body>
</html>