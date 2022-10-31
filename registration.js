function Validation() {
	
	var name =
		document.forms.RegForm.uname.value;
	var email =
		document.forms.RegForm.uemail.value;
	var password =
		document.forms.RegForm.upass.value;
	var Repassword =
		document.forms.RegForm.reupass.value;
	var mobile = 
		document.forms.RegForm.ucontact.value;
	var regEmail=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g; //Javascript reGex for Email Validation.
												 // Javascript reGex for Phone Number validation.
				// Javascript reGex for Name validation

	if (name == "") {
		window.alert("Please enter your name");
		name.focus();
		return false;
	}

				
	if (email == "" || !regEmail.test(email)) {
					window.alert("Please enter a valid e-mail address.");
					email.focus();
					return false;
				}
				
	if (password == "") {
					alert("Please enter your password");
					password.focus();
					return false;
				}

	if(password.length <6){
		alert("Password should be atleast 6 character long");
		password.focus();
		return false;
		
				}
	if(password!=Repassword){
		alert("Password and Confirm Password Didn't match");
		Repassword.focus();
		return false;
		
				}
	
	
	if (!userid || !pass ) {
	    return false;
	            }

		return true;
			}