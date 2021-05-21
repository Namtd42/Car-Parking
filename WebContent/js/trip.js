function checkDes(){
    var destination = document.addTripForm.destination;
    if(destination.value.length == 0 || destination.value.length > 50){
        alert("Not valid destination");
        destination.focus();
        return false;
    }
    return true;
}
function checkDriver(){
    var driver = document.addTripForm.driver;
    if(driver.value.length == 0 || driver.value.length > 50){
        alert("Not valid driver");
        driver.focus();
        return false;
    }
    return true;
}
function checkTime(){
    var departureTime = document.addTripForm.dateTime;
    if(departureTime.value == null){
        alert("Not valid departure time");
        return false;
    }
    return true;
}
function checkType(){
    var carType = document.addTripForm.carType;
    if(carType.value.length == 0 || carType.value.length > 50){
        alert("Car type must not empty");
        carType.focus();
        return false;
    }
    return true;
}
function checkMax(){
    var maxTicket = document.addTripForm.maxTicket;
    if(maxTicket.value.length == 0|| maxTicket.value.length > 50 || !maxTicket.value.match(number)){
        alert("Max ticket not valid");

        return false;
    }
    return true;
}
function checkDate(){
    var date = document.addTripForm.departureDate;
    if(date.value.length == 0){
        alert("Date not valid");

        return false;
    }
    return true;
}

function checkTrip() {
	return checkDes() && checkTime()  && checkDriver() && checkType() && checkMax() && checkDate() ;
}
