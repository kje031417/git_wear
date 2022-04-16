<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAW Signin Welcome !!</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../script/SigninRegisterScript.js"></script>
<link rel="stylesheet" href="../css/signin.css">
</head>
<body>
	<form action="Signin.do" method="post" name="form" id="form"
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
									data-test="txtIdField_Signin" maxlength="255" name="sign_id"
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
									autocomplete="current-password" name="sign_password"
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
											target="_blank" class="link is-underline" tabindex="0"> <span>Privacy
												Policy</span>
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
										<span class="button__wrapper"> <span> Sign in </span>
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
						<h5>Create an account and benefit from a more personal
							shopping experience, and quicker online checkout. All fields are
							mandatory !</h5>
					</div>

					<div id="register-insert" style="text-align: left;">
						<div data-form-fieldset="generic">

							<div class="field ">
								<div class="label-input js-label-input is-ready">
									<label class="label-input__label" for="register-Name">Name</label>
									<input class="label-input__input " type="text"
										autocomplete="username" maxlength="60" name="user_name"
										pattern="^[a-zA-ZàáâäãåąčćęèéêëėįìíîïłńòóôöõøùúûüųūÿýżźñçčšžÀÁÂÄÃÅĄĆČĖĘÈÉÊËÌÍÎÏĮŁŃÒÓÔÖÕØÙÚÛÜŲŪŸÝŻŹÑßÇŒÆČŠŽ∂ð ,.'-]+$"
										placeholder="Enter your Name" data-type="name"
										data-required="true" aria-required="true"
										data-test="txtLastNameField_Register"
										data-screenset-element-id="register-Name"
										data-screenset-element-id-publish="true"
										data-screenset-roles="instance" data-gigya-name="profile.Name"
										data-original-value="" id="register-Name">
								</div>
							</div>

							<div class="field ">
								<div class="label-input js-label-input is-ready">
									<label class="label-input__label" for="register-Id">ID</label>
									<input class="label-input__input " type="text"
										autocomplete="id" maxlength="255" name="user_id"
										placeholder="Enter your ID" pattern=""
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
										name="user_password"
										title="Your password must contain 8 characters minimum and the following 3 character types: uppercase, lowercase and numbers"
										value=""
										pattern="(?=^\S*$)(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,255}"
										placeholder="Enter your Password" data-required="true"
										aria-required="true" data-test="txtPasswordField_Register"
										data-toggle="register-password" autocorrect="off"
										autocapitalize="off" spellcheck="false"
										data-screenset-element-id="register-password"
										data-screenset-element-id-publish="true"
										data-screenset-roles="instance" data-gigya-name="password"
										data-original-value="" id="register-password">
								</div>
							</div>

							<div class="fields-block phone-number-block ">
								<div class="field">
									<div class="label-input js-label-input is-ready">
										<label class="label-input__label" for="registrationPhone">Phone
											Number </label> <input
											class="label-input__input js-phone-field js-phone-number"
											placeholder="Enter your Phone Number" required="" type="tel"
											aria-required="true" autocomplete="tel-national"
											name="user_phone" data-type="tel"
											data-phone-pattern="wc-billing-phone"
											pattern="^(010|011|016|017|018|019)[0-9\s]*$"
											title="휴대폰 번호 입력 형식 – 01000000000(- 제외)"
											data-screenset-element-id="registrationPhone"
											data-screenset-element-id-publish="true"
											data-screenset-roles="instance" id="registrationPhone">
									</div>
								</div>
							</div>


							<div class="field ">
								<div class="label-input js-label-input is-ready">
									<label class="label-input__label" for="register-email">Email</label>
									<input class="label-input__input " type="email"
										autocomplete="email" maxlength="255" name="user_email"
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
							</div><br>

				<div class="form-buttons is-left is-last js-search-btn ">
				<div class="form-buttons__item cta-button">
					<button type="button" onClick="goPopup();" value="팝업_domainChk"
						class="button-is-secondary-daumSearchButton" id="js-searchaddress" aria-live="polite">
						<span class="button__wrapper_a"> <span> Search Address</span>
						</span>
					</button>
					<input type="text" class="label-input__input"  id="roadFullAddr" name="roadFullAddr" placeholder="Search the Address"/>
					<input type="text" class="label-input__input"  id="addrDetail" name="addrDetail" placeholder="Enter detailed Address"/>
				</div>
			</div><br>

							<div id="878c90d4-7723-428a-9ac3-f70da7ef75c0"
								class="nike-unite-date-input dateOfBirth nike-unite-component empty">
								<div class="shim"></div>
								<div class="error"></div>
								<label for="84725b08-1442-4758-85e0-8fb7eb08b164">Date of Birth</label><br>
								<input id="" class="label-input__input"  type="date"
									placeholder="Date of Birth" value="" name="user_birth"
									data-componentname="dateOfBirth" autocomplete="off"
									autocorrect="off" autocapitalize="off" spellcheck="false"
									data-ddlabel="dd" data-mmlabel="mm" data-yyyylabel="yyyy">
							</div>

							<div id="f6961be2-c044-4fd2-95ef-fe630a3394f3"
								class="nike-unite-gender-buttons gender nike-unite-component">
								<label for="5c341b7c-13ae-4e4b-95ed-a61dec34c81a">Gender</label><br>
								<input style="display: inline-block;" type="button" class="button-gender" id="male" value="male" name="user_gender">
								<input style="display: inline-block;" type="button" class="button-gender" id="female" value="female" name="user_gender">
							</div>

							<p class="is-privacy-text">
								By providing my information, I agree to NAW's <a href="#"
									target="_blank" class="link is-underline" tabindex="0"><span>Privacy
										Policy</span></a> and <a href="#" target="_blank"
									class="link is-underline" tabindex="0"><span>Legal
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
						data-test="btnContinueShippingOptions">
						<button type="submit" class="button-is-primary-is-block"
							data-screenset-element-id="__gig_template_element_8_1649649243791"
							data-screenset-element-id-publish="false"
							data-screenset-roles="instance">
							<span class="button__wrapper"> <span> Create Account</span>
							</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>