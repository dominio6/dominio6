$(function() {

	// load the modal window
	$('a.modal').click(function(){

		// scroll to top
		$('html, body').animate({scrollTop:0}, 'fast');
                              $('#contact').css({backgroundImage:'url(casino.png)'});

		// before showing the modal window, reset the form incase of previous use.
		$('.success, .error').hide();
		$('form#contactForm').show();
		
		// Reset all the default values in the form fields
/*		$('#name').val('Tu Nombre');
		$('#email').val('Tu Correo');
		$('#comment').val('Escribe tu consulta...');*/

		//show the mask and contact divs
		$('#mask').show().fadeTo('', 0.7);
		$('div#contact').fadeIn();

		// stop the modal link from doing its default action
		return false;
	});

	// close the modal window is close div or mask div are clicked.
	$('div#close, div#mask').click(function() {
		$('div#contact, div#mask').stop().fadeOut('slow');

	});



	$('#contactForm input').focus(function() {
    if (this.value == this.defaultValue){
        this.value = '';
    }	   //	$(this).val(' ');
	});


        $('#contactForm input').blur(function() {
        if ($.trim(this.value) == ''){
            this.value = (this.defaultValue ? this.defaultValue : '');
        }
    });

	$('#contactForm textarea').focus(function() {
    if (this.value == this.defaultValue){
        this.value = ''; }
    });

        $('#contactForm textarea').blur(function() {
        if ($.trim(this.value) == ''){
            this.value = (this.defaultValue ? this.defaultValue : '');
        }
    });

	// when the Submit button is clicked...
	$('input#submit').click(function() {
	$('.error').hide().remove();
		//Inputed Strings
		var username = $('#name').val(),
			email = $('#email').val(),
			comment = $('#comment').val();
		   $('#submit').val("Enviar");


		//Error Count
		var error_count=0;

		//Regex Strings  /^[a-z0-9_-]{3,16}$/
		var username_regex = /^[a-zA-Z \.]{3,16}$/,
			email_regex = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;

			//Test Username
			if(!username_regex.test(username)||username == 'Tu Nombre') {
				$('#contact_header').after('<p class=error>Nombre Invalido!</p>');
				error_count += 1;
			}

			//Test Email
			if(!email_regex.test(email)) {
				$('#contact_header').after('<p class=error>Correo Invalido!</p>');
				error_count += 1;
			}
			
			//Blank Comment?
			if(comment == '' ||comment == 'Escriba Su Consulta...' ) {
				$('#contact_header').after('<p class=error>La consulta no fue escrita!</p>');
				error_count += 1;
			}

			//No Errors?
			if(error_count == 0) {
              	$('#name').val('Tu Nombre');
		$('#email').val('Tu Correo');
		$('#comment').val('Escriba Su Consulta...');


			$.ajax({
					type: "post",
					url: "send.php",
					data: "name=" + username + "&email=" + email + "&comment=" + comment,
					error: function() {
						$('.error').hide();
						$('#sendError').slideDown('slow');
					},
					success: function () {
                      $('#contact').css({backgroundImage:'none'});
						$('.error').hide();
						$('.success').slideDown('slow');
						$('form#contactForm').fadeOut('slow');
					}

				});
			}

			else {
                $('.error').show();
            }
                              //window.location.href = "send.php?name=" + username + "&email=" + email + "&comment=" + comment;

		return false;
	});

});