Given(/^that a (.*) try to login$/) do |user_type|
	user_data = DataRetriever.get_gmail_data(user_type)

  	visit(LoginPage) { |page| page.login_page(user_data) }
end
