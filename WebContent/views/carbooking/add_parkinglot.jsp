<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Parking lot</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/icon.css">
</head>
<body>
	<div class="h-100 d-flex flex-column">
		<nav class="navbar navbar-light bg-light py-3">
			<span class="navbar-brand"> <span
				class="fas fa-map-marker-alt"></span> Parking lot <a
				style="margin-left: 150px;"
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
					<span class="fas fa-tachometer-alt"></span> Car park manager
				</p>
				<hr>
				<p>
					<span class="fas fa-car"></span> Car Manager
				</p>
				<p class="pl-4">
					<span class="fas fa-list"></span><a
						href="<%=request.getContextPath()%>/listcar"> Car list</a>
				</p>
				<p class="pl-4">
					<span class="fas fa-plus"></span><a
						href="<%=request.getContextPath()%>/addcar"> Add Car</a>
				</p>
				<hr>
				<p>
					<span class="fas fa-shopping-cart"></span> Booking Office manager
				</p>
				<p class="pl-4">
					<span class="fas fa-list"></span><a
						href="<%=request.getContextPath()%>/list_bookingoffice">
						Booking office list</a>
				</p>
				<p class="pl-4">
					<span class="fas fa-plus"></span><a
						href="<%=request.getContextPath()%>/add_bookingoffice"> Add
						Booking office</a>
				<hr>
				<p>
					<span class="fas fa-map-marker-alt"></span> Parking lot mananger
				</p>
				<p class="pl-4">
					<span class="fas fa-list"></span><a
						href="<%=request.getContextPath()%>/list_parkinglot"> Parking
						lot list</a>
				</p>
				<p class="pl-4">
					<span class="fas fa-plus"></span><a
						href="<%=request.getContextPath()%>/add_parkinglot"> Add
						Parking lot</a>
				</p>

			</div>

			<div class="col-md-10 border border-success">
				<div class="p-4">
					<h2>Add Parking lot</h2>
					<hr>
					<form action="<%=request.getContextPath()%>/add_parkinglot"
						method="post" class="form-group" name="addParkingLotForm"
						onsubmit="return checkParking()">

						<table class="table table-borderless">
							<tr class="">
								<td class="w-25"><b> Parking name(*)</b></td>
								<td><input type="text" name="parkingName" id="parkingName"
									class="form-control w-25" placeholder="Enter parking lot"></td>
							</tr>

							<tr>
								<td><b>Place(*)</b></td>
								<td><select name="place" id="place"
									class="custom-select w-25">
									<option value="-1">Choose Place</option>
										<option value="Khu Dong">Khu Dong</option>
										<option value="Khu Tay">Khu Tay</option>
										<option value="Khu Nam">Khu Nam</option>
										<option value="Khu Bac">Khu Bac</option>
								</select></td>
							</tr>

							<tr>
								<td><b>Area(*)</b></td>
								<td><input type="text" name="area" id="area"
									placeholder="Enter area"
									class="form-control w-25 d-inline-block">&emsp;<b>(m2)</b></td>
							</tr>
							<tr>
								<td><b>Price(*)</b></td>
								<td><input type="text" name="price" id="price"
									placeholder="Enter price"
									class="form-control w-25 d-inline-block">&emsp;<b>(VND)</b></td>
							</tr>
							<tr>
								<td></td>
								<td>
									<div>
										<button class="btn btn-warning" name="action" value="reset">Reset</button>
										<button class="btn btn-success" type="submit" name="action"
											value="add">Add</button>
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
	<script src="<%=request.getContextPath()%>/js/parkinglot.js"></script>
</body>
</html>