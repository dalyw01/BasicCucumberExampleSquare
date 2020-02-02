Given("I visit {string} with a {string}") do |string, string2|
  	visit(string)
  	# This is the X to accept cookies
  	if page.first(".squarespace-banner--is-cookie")
    	page.first(".squarespace-banner--is-cookie").click
  	end
  	sleep(2)
  	if string2 == "phone"
    	page.driver.browser.manage.window.resize_to( 300 , 1400 )
    	sleep(1)
  	elsif string2 == "tablet"
    	page.driver.browser.manage.window.resize_to( 900 , 1000 )
    	sleep(1)
  	else
    	page.driver.browser.manage.window.resize_to( 1200 , 1200 )
    	sleep(1)
  	end
  	sleep(2)
end

Given("I press GET STARTED") do
  	sleep(1)
  	page.first('.link--is-button').click
  	sleep(2)
end

Given("I navidagte past I'M JUST BROWSING section if it shows") do
  	sleep(1)
  	# This is the X to accept cookies
  	if page.first(".squarespace-banner--is-cookie")
    	page.first(".squarespace-banner--is-cookie").click
  	end
  	sleep(1)
  	if page.has_css?('.components__ButtonBar__skipButton___ywziw') == true
  		3.times do
    		find('.components__ButtonBar__skipButton___ywziw').click
    		sleep(1)
    	end
  	end
  	sleep(1)
end

Given("I can see {int} templates available to select from") do |int|
	sleep(2)
  	page.first(".templates-content").hover
  	sleep(2)
  	page.first("#templates").hover
  	puts page.all("h3").count
  	puts page.all("h3").count.should eql(int)
 end















