function checkPhone() {
	var a = document.getElementById("phoneNumber").value;
	if (a == "" || a == '') {
		alert("Please fill telephone field");
		return false;
	}
	if (isNaN(a)) {
		alert("Ony positive numebers are accepted");
		return false;
	}
	if (a.length > 11) {
		alert("Your phone number must be in range [7-11]");
		return false;
	}
	if (a.length < 1) {
		alert("Your phone number must be in range [7-11]");
		return false;
	}
	return true;
}

function checkFName() {
	const match = /^[a-zA-Z\s]{1,20}$/;
	var getFName = document.getElementById("fullName").value;
	if (!getFName.match(match)) {
		alert("First Name has only characters and the maximum length is 50");
		document.getElementById("fullName").focus();
		return false;
	}
	return true;
}



function checkEmail() {
	const match = /^[a-z][a-z0-9_\.]{5,32}@[a-z0-9]{2,}(\.[a-z0-9]{2,4}){1,2}$/;
	var getFName = document.getElementById("email").value;
	if (!getFName.match(match)) {
		alert("Email has form: xxx@xxx.xxx.xx OR xxx@xxx.xxx");
		return false;
	}
	return true;
}

function checkSex() {
	if (!document.getElementById("sex").checked) {
		alert("Please check atleast 1 check box");
		return false;
	}
	return true;
}

function checkDate() {
	var getDate = document.getElementById("date").value;
	if (getDate.length == 0) {
		alert("Birthday cannot be empty");
		return false;
	}
	return true;
}
function checkAddress() {
	var address = document.getElementById("address").value;
    if( address.length > 50 || address.length == 0){
        alert("Address must has the maximum length is 50 and cannot be empty")
       
        return false;
    }
    return true;
}

function checkAccount(){
    var account = document.addEmployeeForm.account;
    if(account.value.length < 6 || account.value.length > 50){
        alert("Account must has the minimum length is 6 and the maximum length is 50")
        account.focus();
        return false;
    }
    return true;
}
function checkPass() {
	var password = document.addEmployeeForm.password;
    if(password.value.length < 6 || password.value.length > 50){
        alert("Password must has the minimum length is 6 and the maximum length is 50")
        password.focus();
        return false;
    }
    return true;
}
function checkDep(){
	  var getDep = document.getElementById("department").value;
	  if (getDep == "-1") {
	  alert("Please Select Department");
	  return false;
	  }
	  return true;
	  }
function checkAll() {
	return checkFName() && checkPhone() && checkDate() && checkSex() && checkAddress() && checkEmail()   && checkAccount() && checkPass() && checkDep();
}
