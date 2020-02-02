Given("I visit {string} with a {string} and press LOG IN") do |string, string2|
  visit(string)
  # This is the X to accept cookies
  if page.first(".squarespace-banner--is-cookie")
    page.first(".squarespace-banner--is-cookie").click
  end
  sleep(2)
  if string2 == "phone"
    page.driver.browser.manage.window.resize_to( 300 , 1400 )
    sleep(1)
    page.first(".www-navigation__mobile__drawer-button").click
    sleep(2)
    page.execute_script( 'window.scrollBy(0, 270);')
    sleep(1)
    page.first(".www-navigation__mobile__login-button").click
    sleep(1)
  elsif string2 == "tablet"
    page.driver.browser.manage.window.resize_to( 900 , 1000 )
    sleep(1)
    page.first(".www-navigation__mobile__drawer-button").click
    sleep(1)
    page.first(".www-navigation__mobile__login-button").click
    sleep(1)
  else
    page.driver.browser.manage.window.resize_to( 1200 , 1200 )
    sleep(1)
    page.execute_script( 'window.scrollBy(0, 270);')
    sleep(1)
    page.first(".www-navigation__desktop__account-info__login-button").click
    sleep(1)
  end
  sleep(2)
end

Given("I enter {string} with {string}") do |string, string2|
  sleep(1)
  page.first(".username").click
  sleep(1)
  find('.username').set(string)
  sleep(1)
  find('.password').set(string2)
  sleep(1)
end

Given("I press LOG IN button") do
  sleep(1)
  page.first(".SpinnerButtonRosetta___StyledButtonPrimary-sc-7kmjqm-1").click
  sleep(3)
end

Given("I see password error message") do
  sleep(1)
  page.should have_content('This password is incorrect. Please try again.')
  sleep(1)
end

Given("I see email error message") do
  sleep(1)
  page.should have_content('This email address was not found.')
  sleep(1)
end






