# frozen_string_literal: true

Before('@site-web') do
Capybara.default_max_wait_time = 30
Capybara.disable_animation = true
Selenium::WebDriver::Chrome::Service.driver_path = './chromedriver.exe'
selected_browser = :selenium_chrome
Capybara.default_driver = selected_browser
@driver = Capybara.current_session.driver
@driver.browser.manage.window.maximize
end
