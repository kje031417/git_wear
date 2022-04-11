<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../script/SigninScript.js"></script>
<style type="text/css">
body {
	margin-top: 100px;
	font-family: 'Trebuchet MS', serif;
	line-height: 1.6;
	text-align: center;
	display: flex;
	justify-content: center;
	align-items: center;
}

.allSignin {
	justify-content: center;
	align-items: center;
	text-align: center;
	width: 500px;
	height: 800px;
}

.container {
	width: 500px;
	margin: 0 auto;
}

.insert_id_pw {
	text-align: left;
}

ul.tabs {
	margin: 0px;
	padding: 0px;
	list-style: none;
}

ul.tabs li {
	background: none;
	color: #222;
	display: inline-block;
	padding: 10px 15px;
	cursor: pointer;
}

ul.tabs li.current {
	background: #ededed;
	color: #222;
}

.tab-content {
	display: none;
	background: #ededed;
	padding: 15px;
}

.tab-content.current {
	display: inherit;
}

input {
	border: none;
	font-size: 15px;
}

.label-input__input {
	resize: none;
	width: 98%;
	height: 45px;
	font-size: 15px;
}

.button-is-primary-is-block {
	background-color: #2c3d51;
	border-color: #2c3d51;
	-webkit-box-shadow: 0 3px 0 #080c0f;
	box-shadow: 0 3px 0 #080c0f;
	width: 480px;
	height: 50px;
	color: white;
}

.button__wrapper {
	background-color: none;
	font-color: white;
	text-align: center;
}
</style>
</head>
<body>
	<form action="Signin.do" method="post" name="SigninForm"
		onsubmit="check(); return false;">
		<div class="allSignin">
			<div class="context">
				<h1 class="heading is-1 has-text-centered"
					data-test="lblWelcomeMessage_Register">Account</h1>
			</div>

			<div id="container">
				<ul class="tabs">
					<li class="tab-link current" data-tab="tab-1">SIGN IN</li>
					<li class="tab-link" data-tab="tab-2">REGISTER</li>
				</ul>

				<div id="tab-1" class="tab-content current">
					<h4>WELCOME BACK</h4>
					<h5>Sign in with your id and password.</h5>

					<div class="insert_id_pw">
						<div class="field">
							<div class="label-input js-label-input is-ready">
								<label class="label-input__label" for="Signin-id">ID</label><br>
								<input class="label-input__input" type="text"
									data-test="txtIdField_Signin" maxlength="255" name="id"
									placeholder="Enter your ID" data-required="true"
									required="true" aria-required="true"
									data-screenset-element-id="Signin-id"
									data-screenset-element-id-publish="true"
									data-screenset-roles="instance" data-gigya-name="SigninID"
									data-original-value="" id="Signin-id" aria-invalid="true">
							</div>
						</div>

						<div class="field is-last is-relative">
							<div class="label-input js-label-input is-ready">
								<label class="label-input__label" for="Signin-password">Password</label><br>
								<input class="label-input__input" type="password"
									placeholder="Enter your PW"
									data-test="txtRegisteredUserPassword_ShowPassword"
									autocomplete="current-password" name="password"
									data-required="true" required="true" aria-required="true"
									data-toggle="Signin-password" autocorrect="off"
									autocapitalize="off" spellcheck="false"
									data-screenset-element-id="Signin-password"
									data-screenset-element-id-publish="true"
									data-screenset-roles="instance" data-gigya-name="password"
									data-original-value="" id="Signin-password"> <span
									class="password-eye-toggle is-invisible"
									data-screenset-element-id="password-eye-toggle_Signin-password"
									data-screenset-element-id-publish="true"
									data-screenset-roles="instance"
									id="password-eye-toggle_Signin-password"><br> </span>
							</div>
						</div>
						<a href="#">*Forgot Password? > </a><br>
						<p></p>
						
						<div class="form-footer remember-me" data-remember-me="false">
							<div class="field is-not-spaced">
								<span class="checkbox"> <input type="checkbox"
									data-test="chkbxRememberMe" name="remember" value=""
									data-screenset-element-id="Signin-remember"
									data-screenset-element-id-publish="true"
									data-screenset-roles="instance" data-gigya-name="remember"
									data-original-value="false" id="Signin-remember"
									aria-required="false"> <label id=""
									for="Signin-remember">Remember me (optional)</label>
								</span>
									<div class="form-footer has-margin-bottom-xl">
										<p class="is-privacy-text">
											By providing my information, I agree to NAW's <a href="#"
												target="_blank" class="link is-underline" tabindex="0">
												<span>Privacy Policy</span>
											</a> and <a href="#" target="_blank" class="link is-underline"
												tabindex="0"><span>Legal Statement</span></a>
										</p>
									</div>
										<div class="form-buttons__item"
											data-test="btnContinueShippingOptions">
											<button type="submit" class="button-is-primary-is-block"
												aria-live="polite" id=""
												data-screenset-element-id="__gig_template_element_4_1649292160346"
												data-screenset-element-id-publish="false"
												data-screenset-roles="instance">
												<span class="button__wrapper"> <span> Sign in
												</span>
												</span>
											</button>
										</div>
							</div>
						</div>
					</div>
				</div>

				<div id="tab-2" class="tab-content">
					<div id="register-second-title" style="text-align: center;">
					<h4>BECOME A NAW MEMBER</h4>
					<h5>Create an account and benefit from a more personal shopping
						experience, and quicker online checkout. All fields are mandatory !</h5>
					</div>
						
					<div id="register-insert" style="text-align: left;">
					<div data-form-fieldset="generic">
						
						<div class="field ">
							<div class="label-input js-label-input is-ready">
								<label class="label-input__label" for="register-firstname">First
									name</label> <input class="label-input__input " type="text"
									autocomplete="given-name" maxlength="60"
									name="profile.firstName" 
									pattern="^[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]+$"
									placeholder="Enter your First name (ex.Arin)"
									data-type="name" data-required="true" required="true"
									aria-required="true" data-test="txtFirstNameField_Register"
									data-screenset-element-id="register-firstname"
									data-screenset-element-id-publish="true"
									data-screenset-roles="instance"
									data-gigya-name="profile.firstName" data-original-value=""
									id="register-firstname">
							</div>
						</div>

						<div class="field ">
							<div class="label-input js-label-input is-ready">
								<label class="label-input__label" for="register-Name">Name</label>
									<input class="label-input__input " type="text"
									autocomplete="username" maxlength="60" name="name"
									pattern="^[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]+$"
									placeholder="Enter your Name"
									data-type="name" data-required="true"
									aria-required="true" data-test="txtLastNameField_Register"
									data-screenset-element-id="register-Name"
									data-screenset-element-id-publish="true"
									data-screenset-roles="instance"
									data-gigya-name="profile.Name" data-original-value=""
									id="register-Name">
							</div>
						</div>
						
						<div class="field ">
							<div class="label-input js-label-input is-ready">
								<label class="label-input__label" for="register-Id">ID</label>
								<input class="label-input__input " type="text"
									autocomplete="id" maxlength="255" name="ID"
									placeholder="Enter your ID"
									pattern=""
									title="Email - e.g.: name@mail.com" value=""
									data-required="true" aria-required="true"
									data-test="txtEmailIDField_Register"
									data-screenset-element-id="register-email"
									data-screenset-element-id-publish="true"
									data-screenset-roles="instance" data-gigya-name="email"
									data-original-value="" id="register-email">
							</div>
						</div>
						
						<div class="field has-no-margin is-relative">
							<div class="label-input js-label-input is-ready">
								<label class="label-input__label"
									data-screenset-element-id="label_register-password"
									data-screenset-element-id-publish="true"
									data-screenset-roles="instance" for="register-password"
									id="label_register-password">Password</label> <input
									class="label-input__input " type="password"
									autocomplete="new-password" aria-describedby="password-help"
									name="password" title="Your password must contain 8 characters minimum and the following 3 character types: uppercase, lowercase and numbers"
									value=""
									pattern="(?=^\S*$)(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,255}"
									placeholder="Enter your Password"
									data-required="true"  aria-required="true"
									data-test="txtPasswordField_Register"
									data-toggle="register-password" autocorrect="off"
									autocapitalize="off" spellcheck="false"
									data-screenset-element-id="register-password"
									data-screenset-element-id-publish="true"
									data-screenset-roles="instance" data-gigya-name="password"
									data-original-value="" id="register-password"> 
							</div>
						</div>
						
						<div class="field ">
							<div class="label-input js-label-input is-ready">
								<label class="label-input__label" for="register-email">Email</label>
								<input class="label-input__input " type="email"
									autocomplete="email" maxlength="255" name="email"
									placeholder="Enter your Email"
									pattern="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\b"
									title="Email - e.g.: name@mail.com" value=""
									data-required="true" aria-required="true"
									data-test="txtEmailIDField_Register"
									data-screenset-element-id="register-email"
									data-screenset-element-id-publish="true"
									data-screenset-roles="instance" data-gigya-name="email"
									data-original-value="" id="register-email">
							</div>
						</div>
						
						<div class="field ">
							<div class="label-input js-label-input is-ready">
								<label class="label-input__label" for="register-Name">Name</label>
									<input class="label-input__input " type="text"
									autocomplete="username" maxlength="60" name="name"
									pattern="^[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]+$"
									placeholder="Enter your Name"
									data-type="name" data-required="true"
									aria-required="true" data-test="txtLastNameField_Register"
									data-screenset-element-id="register-Name"
									data-screenset-element-id-publish="true"
									data-screenset-roles="instance"
									data-gigya-name="profile.Name" data-original-value=""
									id="register-Name">
							</div>
						</div>
						
							<p class="is-privacy-text">
								By providing my information, I agree to NAW's <a
									href="#"
									target="_blank" class="link is-underline" tabindex="0"><span>Privacy
										Policy</span></a> and <a
									href="#"
									target="_blank" class="link is-underline" tabindex="0"><span>Legal
										Statement</span></a>
							</p>
							
							<div class="field is-not-spaced  is-hidden">
								<span> <input type="checkbox"
									data-gigya-name="preferences.privacy.us_pii_usage.isConsentGranted"
									data-error-before="true"
									name="preferences.privacy.us_pii_usage.isConsentGranted"
									checked="true" data-type="privacy" data-required="true"
									required="true" aria-required="true"
									data-test="chkbxPrivacyPolicyCheckbox" value=""
									data-screenset-element-id="register-terms-checkbox"
									data-screenset-element-id-publish="true"
									data-screenset-roles="instance" data-original-value="true"
									id="register-terms-checkbox"> <label id=""
									for="register-terms-checkbox">I agree to the <a
										href="https://services.chanel.com/en_US/policies/privacy/"
										target="_blank" class="link is-underline" type="button"
										tabindex="0"><span>Privacy Policy</span></a></label>
								</span>
							</div>
						</div>


						<div class="gigya-captcha-wrapper gigya-register-captcha">
							<div class="gigya-captcha gigya-reset"
								data-screenset-element-id="__gig_template_element_9_1649649243791"
								data-screenset-element-id-publish="false"
								data-screenset-roles="instance">
								<div id="gig_captcha_2_1649649246658">
									<div class="grecaptcha-badge" data-style="bottomright"
										style="width: 256px; height: 60px; display: block; transition: right 0.3s ease 0s; position: fixed; bottom: 14px; right: -186px; box-shadow: gray 0px 0px 5px; border-radius: 2px; overflow: hidden;">
										<div class="grecaptcha-logo">
											<iframe title="reCAPTCHA"
												src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6Le88JwcAAAAAJ6wFD4vgnmLtWFE6tspJQcfP-KS&amp;co=aHR0cHM6Ly93d3cuY2hhbmVsLmNvbTo0NDM.&amp;hl=en&amp;v=Y-cOIEkAqcfDdup_qnnmkxIC&amp;theme=white&amp;size=invisible&amp;cb=zhvjz4imjdhl"
												width="256" height="60" role="presentation"
												name="a-hzz2s4ou4ol9" frameborder="0" scrolling="no"
												sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe>
										</div>
										
										<div class="grecaptcha-error"></div>
										<textarea id="g-recaptcha-response-2"
											name="g-recaptcha-response" class="g-recaptcha-response"
											style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea>
									</div>
									<iframe style="display: none;"></iframe>
								</div>
							</div>
							<span class="gigya-error-msg" data-bound-to="captchaText"
								data-screenset-element-id="__gig_template_element_6_1649649243789"
								data-screenset-element-id-publish="false"
								data-screenset-roles="instance" aria-atomic="true"></span>
						</div>
					</div>
					<br>
							<div class="form-buttons__item"
								data-test="btnContinueShippingOptions" >
								<button type="submit" class="button-is-primary-is-block"
									data-screenset-element-id="__gig_template_element_8_1649649243791"
									data-screenset-element-id-publish="false"
									data-screenset-roles="instance">
									<span class="button__wrapper"> <span> Create
											account</span>
									</span>
								</button>
							</div>
						</div>
					</div>

				</div>
			</div>
	</form>
</body>
</html>