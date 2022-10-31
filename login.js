function Validation() {
	
				var email =
					document.forms.RegForm.uemail.value;
				var password =
					document.forms.RegForm.upass.value;
				var regEmail=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/g; //Javascript reGex for Email Validation.
												 // Javascript reGex for Phone Number validation.
				// Javascript reGex for Name validation

				
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

				

				
			}