Feature: Gist Feature

   User can see gists list and create, edit, and delete gists.

   @create-public-gist
   Scenario: As a user, I want to create a public gist.
   Given user logged in
   When user create a new gist
   And user input gist description
   And user input filename
   And user input content
   Then user can create a public gist

   @delete-gist
   Scenario: As a user, I want to delete an existing gist.
   Given user logged in
   When user go to your gists
   Then user should see my gists page
   When user view a gist
   And user delete their gist
   Then user should see my gists page
   

   @edit-gist
   Scenario: As a user, I want to edit an existing gist.
   Given user logged in
   When user go to my gists
   And user view a gist
   And user tap on edit gist button
   And user input content
   And user can save an edited gist
   Then user should see my gists page

   @see-my-gists
   Scenario: As a user, I want to see my list of gists.
   Given user logged in
   When user go to my gists
   Then user can see their list of gists