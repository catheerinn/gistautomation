Feature: Login to gist.github.com

   User login to gist

@login-positive
   Scenario: Login Case
   Given User Open Gist website
   When User tap on Sign In button
   And User input valid email
   And User input valid password
   And User tap on button Sign in
   Then User should see gist homepage

@login-negative   
   Scenario: Login Case Invalid Email
   Given User Open Gist website
   When User tap on Sign In button
   And User input invalid email
   And User input valid password
   And User tap on button Sign in
   Then User should see error message

@login-negative
   Scenario: Login Case Invalid Password
   Given User Open Gist website
   When User tap on Sign In button
   And User input valid email
   And User input invalid password
   And User tap on button Sign in
   Then User should see error message
   
@forgot-password
   Scenario: Login Case forgot password
   Given User Open Gist website
   When User tap on Sign In button
   And User tap on Forgot Password button
   Then User should see Reset Password page
   When User input Email Address
   Then User should see reset password confirmation page
   
  
   
   
   