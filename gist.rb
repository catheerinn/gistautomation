# Steps for Gist Feature

  # @create-public-gist
  Given("user logged in") do
    @browser.navigate.to $homepage_url
  end

  When("user want to create a new gist") do
    @browser.find_element(:xpath, $btn_new_gist).click
  end
  
  And("user input gist description") do
    @browser.find_element(:xpath, $input_gist_desc).send_keys "test automation"
  end
  
  And("user input filename") do
    @browser.find_element(:xpath, $input_gist_filename).send_keys "readme.txt"
  end
  
  And("user input content") do
    @browser.find_element(:xpath, $input_gist_content).send_keys "test automation create a readme file"
  end
  
  Then("user can create a public gist") do
    @browser.find_element(:xpath, $btn_create_pubgist).click
  end

  # @delete-gist
  # Given user logged in

  When("user go to your gists") do
    @browser.find_element(:xpath, $btn_your_gist).click
  end

  Then("user should see my gists page") do
    @browser.find_element(:xpath, $my_gist)
  end

  When("user view a gist") do
    @browser.find_element(:xpath, $view_top_gist).click
  end
  
  And("user delete their gist") do
    sleep(1)
    @browser.find_element(:xpath, $btn_delete_gist).click
  end

  # @edit-gist
  # Given user logged in
  
  # When user go to my gists

  # And user view a gist

  And("user tap on edit gist button") do
    sleep(1)
    @browser.find_element(:xpath, $btn_edit_gist).click
  end

  # And user input content

  And("user can save an edited gist") do
    @browser.find_element(:xpath, $btn_update_gist).click
  end

  # @see-my-gists
  # When user go to my gists 

  Then("user can see their list of gists") do
    sleep(1)
    class CheckCurrentURL < Test::Unit::TestCase
        def if_url_contains
            assert(@browser.current_url.include?($user_name))
            puts "In user's gists list"
        end
    end
  end

