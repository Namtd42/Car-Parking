function checkPName() {
	var getPName = document.getElementById("parkingName").value;
	if (getPName.length == 0 || getPName.length > 50) {
		alert("Parking name cannot be empty and the maximum length is 50");
		return false;
	}
	return true;
}
function checkPlace(){
	  var getPlace = document.getElementById("place").value;
	  if (getPlace == "-1") {
	  alert("Please Select Place");
	  return false;
	  }
	  return true;
	  }
function checkArea() {
	var getArea = document.getElementById("area").value;
	if (getArea.length == 0) {
		alert("Area cannot be empty");
		return false;
	}
	if (isNaN(getArea)) {
		alert("Only Positive numbers are accepted");
		return false;
	}
	return true;
}
function checkPrice() {
	var getPrice = document.getElementById("price").value;
	if (getPrice.length == 0) {
		alert("Price cannot be empty");
		return false;
	}
	if (isNaN(getPrice)) {
		alert("Only Positive numbers are accepted");
		return false;
	}
	return true;
}

function checkParking() {
	return checkPName() && checkPlace() && checkArea() && checkPrice() ;
}
