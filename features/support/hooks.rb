Before('@web') do
  @browser = Selenium::WebDriver.for(:chrome)
  @browser.manage.timeouts.implicit_wait =30
  @browser.manage.timeouts.page_load = 60
  @browser.manage.window.maximize()
end

After('@web') do
  sleep 5
  @browser.close
end