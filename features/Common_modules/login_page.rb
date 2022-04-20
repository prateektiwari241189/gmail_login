class LoginPage 
	include PageObject
	page_url 'https://accounts.google.com/signin/v2/identifier?service=mail&passive=1209600&osid=1&continue=https%3A%2F%2Fmail.google.com%2Fmail%2Fu%2F0%2F&followup=https%3A%2F%2Fmail.google.com%2Fmail%2Fu%2F0%2F&emr=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin'
	# this are the class variables 
	@@xpath_username = "//input[@type='email']" 
	@@xpath_button = "(//button[@type='button'])[3]"
	
	def login_page (user_data)
		text_field_element(xpath: @@xpath_username).send_keys(user_data['user_name'])
		button_element(xpath: @@xpath_button).click 
	end 

end 
