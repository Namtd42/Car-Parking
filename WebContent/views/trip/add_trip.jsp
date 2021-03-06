<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Trip</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/icon.css">
</head>
<body>
	<div class="h-100 d-flex flex-column">
		<nav class="navbar navbar-light bg-light py-3">
			<span class="navbar-brand"> <span class="fas fa-plane"></span>
				Trip <a style="margin-left: 210px;"
				href="<%=request.getContextPath()%>/views/carbooking/car_manager.jsp">
					Car Park Manager</a> <a class="pl-4"
				href="<%=request.getContextPath()%>/views/trip/trip_manager.jsp">
					Trip Manager</a>

			</span>
			<div class="my-3 my-lg-0 text-primary">
				<span class="mr-sm-4">Welcome ${user.employeeName}</span> <span
					class="my-3 my-sm-0"> <span class="fas fa-sign-out-alt"></span>
					<a href="<%=request.getContextPath()%>/login"> Logout</a>
				</span>
			</div>
		</nav>

		<div class="d-flex flex-grow-1">
			<div class="col-md-2 bg-light flex-grow-1 text-primary">
				<p>
					<span class="fas fa-tachometer-alt"></span> Trip manager
				</p>
				<p class="pl-4">
					<span class="fas fa-list"></span><a
						href="<%=request.getContextPath()%>/listtrip"> Trip list</a>
				</p>
				<p class="pl-4">
					<span class="fas fa-plus"></span><a
						href="<%=request.getContextPath()%>/addtrip"> Add Trip</a>
				</p>
				<hr>
				<p>
					<span class="fas fa-ticket-alt"></span>Ticket manager
				</p>
				<p class="pl-4">
					<span class="fas fa-list"></span><a
						href="<%=request.getContextPath()%>/listticket"> Ticket list</a>
				</p>
			</div>

			<div class="col-md-10 border border-success">
				<div class="p-4">
					<h2>Add trip</h2>
					<hr>
					<form action="<%=request.getContextPath()%>/addtrip" method="post" class="form-group"
					 name="addTripForm" onsubmit="return checkTrip()">
						<table class="table table-borderless">
							<tr class="">
								<td class="w-25"><b>Destination(*)</b></td>
								<td><input type="text" name="destination"
									id="destination" class="form-control w-25"
									placeholder="Enter destination"></td>
							</tr>

							<tr>
								<td><b>Departure time(*)</b></td>
								<td><input type="time" name="dateTime" id="dateTime"
									class="form-control w-25"></td>
							</tr>

							<tr>
								<td><b>Driver(*)</b></td>
								<td><input type="text" name="driver" id="driver"
									placeholder="Enter driver" class="form-control w-25"></td>
							</tr>
							<tr>
								<td><b>Car Type(*)</b></td>
								<td><input type="text" name="carType" id="cartype"
									placeholder="Enter car type" class="form-control w-25"></td>
							</tr>
							<tr>
								<td><b>Maximun online ticket <br> number(*)
								</b></td>
								<td><input type="text" name="maxTicket" id="maxTicket"
									placeholder="0" class="form-control w-25"></td>
							</tr>
							<tr>
								<td><b>Departure date(*)</b></td>
								<td><input type="date" name="departureDate"
									id="departureDate" class="form-control w-25"></td>
							</tr>
							<tr>
								<td></td>
								<td>
									<div>
										<button class="btn btn-warning">Reset</button>
										<button class="btn btn-success" type="submit" name="action" value="add">Add</button>
									</div>
								</td>
							</tr>
						</table>
					</form>

				</div>
			</div>

		</div>
	</div>
	<script src="<%=request.getContextPath()%>/jquery/jquery-3.4.1.js"></script>
	<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/trip.js"></script>
</body>
</html>