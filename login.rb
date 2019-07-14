# Steps for Login Feature  
  
  Given("User Open Gist website") do
    @browser.navigate.to $homepage_url
  end
  
  When("User tap on Sign In button") do
    @browser.find_element(:xpath, $btn_sign_in_header).click
  end
  
  And("User input valid email") do
    @browser.find_element(:id, $input_email).send_keys $user_email
  end
  
  And("User input valid password") do
    @browser.find_element(:id, $input_pw).send_keys $user_password
  end

  And("User input invalid email") do
    @browser.find_element(:id, $input_email).send_keys $invalid_email
  end

  And("User input invalid password") do
    @browser.find_element(:id, $input_pw).send_keys $invalid_password
  end
  
  And("User tap on button Sign in") do
    @browser.find_element(:xpath, $btn_signin).click
  end

  Then("User should see error message") do
      sleep(1)
      element = @browser.find_element(:id, $error_message)
      if element.displayed?
          puts "Login Error Message"
        endU
      end
  
  Then("User should see gist homepage") do
    # Sleep to wait for login process
    sleep(1)
    # Find element 'New gist'
    element = @browser.find_element(:xpath, $gist_home)
    if element.displayed?
      puts "New gist button found"
    endU
  end
    
    And("User tap on Forgot Password button") do
        @browser.find_element(:id, $forgot_password).click
    end

    Then("User should see Reset Password page") do
        @browser.find_element(:id, $reset_password_page)
    end
   
   And("User input Email Address") do
       @browser.find_element(:id, $input_reset_email).send_keys $valid_password
   end
   
   Then("User should see reset password confirmation page") do
       @browser.find_element(:id, $reset_password_done)
   end
