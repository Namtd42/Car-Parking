
//=========== check form
var letters = /^[A-Za-z]+$/;
var number = /^[0-9]+$/;
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

// Begin check Add Emplyee form
function checkAddEmployeeForm(){
    if(checkFullName() && checkPhoneNumberE() && checkSex() && 
    checkAddress() && checkEmail() && checkAcount() && checkPassword()){
        alert("OK!");
        return true;
    } else {
        return false;
    }
}
function checkFullName() {
    var fullName = document.addEmployeeForm.fullName;
    if(fullName.value.length == 0 || fullName.value.length > 50 || !fullName.value.match(letters) ){
        alert("Full name is empty or not contain letters only");
        fullName.focus();
        return false;
    }else{
        return true;
    }

}
function checkPhoneNumberE() {
    var phoneNumber = document.addEmployeeForm.phoneNumber;
    if(phoneNumber.value.length == 0 || phoneNumber.value.length > 50 || !phoneNumber.value.match(number) ){
        alert("Phone number is empty or not contain numbers only");
        phoneNumber.focus();
        return false;
    }else{
        return true;
    }

}
function checkSex() {
    var sex = document.addEmployeeForm.sex;
    if(sex[0].checked || sex[1].checked){
        return true;
    } else {
        alert("Chose gender");
        return false;
    }
    
}
function checkDOB(){
    var DOB = document.addEmployeeForm.date;
    if(DOB.value == null){
        alert("DOB is emptys");
        DOB.focus();
        return false;
    } else{
        return true;
    }
}
function checkAddress(){
    var address = document.addEmployeeForm.address;
    if(address.value.length == 0 || address.value.length > 50){
        alert("Address is empty or more than 50 characters");
        address.focus();
        return false;
    } else{
        return true;
    }
}
function checkEmail(){
    var email = document.addEmployeeForm.email;
    if(email.value.length == 0 || email.value.length > 50 || !email.value.match(mailformat)){
        alert("Not valid email");
        email.focus();
        return false;
    }
    return true;
}
function checkAcount(){
    var account = document.addEmployeeForm.account;
    if(account.value.length == 0 || account.value.length > 50){
        alert("Account is empty or more than 50 characters")
        email.focus();
        return false;
    }
    return true;
}
function checkPassword(){
    var password = document.addEmployeeForm.password;
    if(password.value.length == 0 || password.value.length > 100){
        alert("Password not valid")
        password.focus();
        return false;
    }
    return true;
}
// End check Add Emplyee form

// Begin check Add Booking office form
function checkAddBookingOfficeForm(){
    if(checkbookingOfficeName() && checkPhoneNumberB() && checkPriceB()){
        alert("ok");
        return true;
    }
    return false;
}

function checkbookingOfficeName() {
    var bookingOfficeName = document.addBookingOfficeForm.bookingOfficeName;
    if(bookingOfficeName.value.length == 0 || bookingOfficeName.value.length > 50 ){
        alert("Booking office must not empty");
        bookingOfficeName.focus();
        return false;
    }else{
        return true;
    }
}
function checkPriceB(){
    var price = document.addBookingOfficeForm.price;
    if( price.value.length == 0 || price.value.length > 50 || !price.value.match(number)){
        alert("Price must not empty and contain number only");
        price.focus();
        return false;
    }
    return true;
}
function checkPhoneNumberB(){
    var phoneNumber = document.addBookingOfficeForm.phoneNumber;
    if(phoneNumber.value.length ==0 || phoneNumber.value.length > 50 || !phoneNumber.value.match(number)){
        alert("Not valid phone number");
        phoneNumber.focus();
        return false;
    }
    return true;
}
// End check Add Booking office form

// Begin check Add Parking lot form
function checkAddParkingLotForm(){
    if(checkParkingName() && checkArea() && checkPriceP()){
        alert("OK");
        return true;
    }
    return false;
}

function checkParkingName() {
    var parkingName = document.addParkingLotForm.parkingName;
    if(parkingName.value.length == 0 || parkingName.value.length > 50){
        alert("Parking lot must not empty");
        parkingName.focus();
        return false;
    }else{
        return true;
    }
}

function checkArea(){
    var area = document.addParkingLotForm.area;
    if(area.value.length == 0 || area.value.length > 50 || !area.value.match(number)){
        alert("Not valid area input");
        area.focus();
        return false;
    }
    return true;
}
function checkPriceP(){
    var price = document.addParkingLotForm.price;
    if(price.value.length == 0 || price.value.length > 50 || !price.value.match(number)){
        alert("Not valid price")
        price.focus();
        return false;
    }
    return true;
}
// End check Add Parking lot form

// Begin check Add car form
function checkAddCarForm(){
    if(checkLicensePlate() && checkCarTypeC() && checkCarColor() ){
    alert("OK");
    return true;
    }
    return false;
}
function checkLicensePlate(){
    var licence = document.addCarForm.licencePlate;
    if(licence.value.length == 0 || licence.value.length >50 ){
        alert("Not valid license plate");
        licence.focus();
        return false;
    }
    return true;
}
function checkCarTypeC(){
    var carType = document.addCarForm.carType;
    if(carType.value.length > 50){
        alert("Car type too long");
        carType.focus();
        return false;
    }
    return true;
}
function checkCarColor(){
    var carColor = document.addCarForm.carColor;
    if(carColor.value.length > 50){
        alert("Car color too long");
        carColor.focus();
        return false;
    }
    return true;
}
// End check Add car form

// Begin check Add Trip form
function checkAddTripForm(){
    if(checkDestination() && checkDriver() && checkCarTypeT() && checkMaxTicket() ){
        alert("Ok");
        return true;
    }  
    return false;
}
function checkDestination(){
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
function checkDepartureTime(){
    var departureTime = document.addTripForm.departureTime;
    if(departureTime.value.length == 0){
        alert("Not valid departure time");
        departureTime.focus();
        return false;
    }
    return true;
}
function checkCarTypeT(){
    var carType = document.addTripForm.carType;
    if(carType.value.length == 0 || carType.value.length > 50){
        alert("Car type must not empty");
        carType.focus();
        return false;
    }
    return true;
}
function checkMaxTicket(){
    var maxTicket = document.addTripForm.maxTicket;
    if(maxTicket.value.length == 0|| maxTicket.value.length > 50 || !maxTicket.value.match(number)){
        alert("Max ticket not valid");
        maxTicket.focus();
        return false;
    }
    return true;
}
function checkDepartureDate(){
    var departureDate = document.addTripForm.departureDate;
    if(departureDate.value.length == 0){
        alert("Not valid departure date");
        departureDate.focus();
        return false;
    }
    return true;
}
// End check Add Trip form