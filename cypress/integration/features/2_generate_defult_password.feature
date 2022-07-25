Feature: Generate Defult Password

  # We can add a background for "I am on the landing page", since it is being used in every test
  # Background, just like before each in Cypress, runs before each test

  Scenario: As a user I can click on generate password 
    Given I am on the landing page
    # Would make the string variables more readable by having either a page object model with selectors or a selectors dictionary as in the new class cypress/support/Selectors.js
    # example below, but applicable to all elements on the page
    # And I can click on 'Generate Button'
    And I can click on 'generate_password_btn'
    Then I can see 'generated_password' will not be empty
    Then I can see 'generated_password' has '3' passwords

  Scenario: As a user I can generate 4 password 
    Given I am on the landing page
    And I can click on dropdown 'num_passwords' and change it to '4'
    And I can click on 'generate_password_btn'
    Then I can see 'generated_password' will not be empty
    Then I can see 'generated_password' has '4' passwords

  # We should use scenario outline feature for tests which just have change of test data, instead of writting new tests altogether
  # Scenario Outline: As a user I can generate multiple passwords
  #   Given I am on the landing page
  #   And I can click on dropdown 'num_passwords' and change it to "<Passwords number>"
  #   And I can click on 'generate_password_btn'
  #   Then I can see 'generated_password' will not be empty
  #   Then I can see 'generated_password' has "<Passwords number>" passwords

  #   Examples:
  #   |Passwords number|
  #   |3|
  #   |4|

  Scenario: As a user I can see the defult password word setting
    Given I am on the landing page
    And I can click on 'section_words_icon'
    Then I can see 'num_words' will have text as '3'
    Then I can see 'word_length_min' will have text as '4'
    Then I can see 'word_length_max' will have text as '8'
    And I can click on 'section_transformation_icon'
    Then I can see 'case_transform' will have text as 'alternating WORD case'
    And I can click on 'section_separator_icon'
    Then I can see 'separator_type' will have text as 'Random Character'
    And I can click on 'section_padding_digits_icon'
    Then I can see 'padding_digits_before' will have text as '2'
    Then I can see 'padding_digits_after' will have text as '2'
    And I can click on 'section_padding_symbols_icon'
    Then I can see 'padding_type' will have text as 'Fixed'

  Scenario: As a user I can create a single short word passwrod that is poor
    Given I am on the landing page
    And I can click on 'section_words_icon'
    # Make tests consice such that all selections for a section falls in one line, making tests more readable
    # --And I can set WORD section params to "2" for num_words, '4' for min_length, and '4' for max_length
    And I can click on dropdown 'num_words' and change it to '2'
    And I can click on dropdown 'word_length_min' and change it to '4'
    And I can click on dropdown 'word_length_max' and change it to '4'
    And I can click on 'section_transformations_icon'
    And I can click on dropdown 'case_transform' and change it to '-none-'
    And I can click on 'section_separator_icon'
    And I can click on dropdown 'separator_type' and change it to '-none-'
    And I can click on dropdown 'padding_digits_before' and change it to '0'
    And I can click on dropdown 'padding_digits_after' and change it to '0'
    And I can click on 'section_padding_symbols_icon'
    And I can click on dropdown 'padding_type' and change it to '-none-'
    And I can click on dropdown 'num_passwords' and change it to '1'
    And I can click on 'generate_password_btn'
    Then I can see 'password_structure_container' will have text as 'wordword'
    Then I can see 'length_container' will have text as 'always 8 characters'
    Then I can see 'password_trafficlight_container' will have text as 'Poor'
    Then I can see 'generated_password' will not be empty
    Then I can see 'generated_password' has '1' passwords

  Scenario: As a user I can create a single short word passwrod that is good
    Given I am on the landing page
    And I can click on 'section_words_icon'
    And I can click on dropdown 'num_words' and change it to '3'
    And I can click on dropdown 'word_length_min' and change it to '4'
    And I can click on dropdown 'word_length_max' and change it to '8'
    And I can click on 'section_transformations_icon'
    And I can click on dropdown 'case_transform' and change it to 'alternating WORD case'
    And I can click on 'section_separator_icon'
    And I can click on dropdown 'separator_type' and change it to 'Random Character'
    And I can click on 'section_padding_digits_icon'
    And I can click on dropdown 'padding_digits_before' and change it to '2'
    And I can click on dropdown 'padding_digits_after' and change it to '2'
    And I can click on 'section_padding_symbols_icon'
    And I can click on dropdown 'padding_type' and change it to 'Fixed'
    And I can click on dropdown 'num_passwords' and change it to '1'
    And I can click on 'generate_password_btn'
    Then I can see 'password_structure_container' will have text as 'ppddswordswordswordsddpp'
    Then I can see 'between 24 and 36 characters' 
    # We want to split these 2 assertions to avoid cucumber string errors and make sure the new steps exists on step file
    And 'length_container' will have text as 'length_container'
    Then I can see 'password_trafficlight_container' will have text as 'Good'
    Then I can see 'generated_password' will not be empty
    Then I can see 'generated_password' has '1' passwords

  Scenario: As a user I can create a single long password that is ok 
    Given I am on the landing page
    And I can click on 'section_words_icon'
    And I can click on dropdown 'num_words' and change it to '10'
    And I can click on dropdown 'word_length_min' and change it to '12'
    And I can click on dropdown 'word_length_max' and change it to '12'
    And I can click on 'section_transformations_icon'
    And I can click on dropdown 'case_transform' and change it to '-none-'
    And I can click on 'section_separator_icon'
    And I can click on dropdown 'separator_type' and change it to '-none-'
    And I can click on 'section_padding_digits_icon'
    And I can click on dropdown 'padding_digits_before' and change it to '0'
    And I can click on dropdown 'padding_digits_after' and change it to '0'
    And I can click on 'section_padding_symbols_icon'
    And I can click on dropdown 'padding_type' and change it to '-none-'
    And I can click on dropdown 'num_passwords' and change it to '1'
    And I can click on 'generate_password_btn'
    Then I can see 'password_structure_container' will have text as 'wordwordwordwordwordwordwordwordwordword'
    Then I can see 'length_container' will have text as 'always 120 characters'
    Then I can see 'password_trafficlight_container' will have text as 'OK'
    Then I can see 'generated_password' will not be empty
    Then I can see 'generated_password' has '1' passwords

  Scenario: As a user I can create a single long password that is good 
    Given I am on the landing page
    And I can click on 'section_words_icon'
    And I can click on dropdown 'num_words' and change it to '10'
    And I can click on dropdown 'word_length_min' and change it to '9'
    And I can click on dropdown 'word_length_max' and change it to '12'
    And I can click on 'section_transformations_icon'
    And I can click on dropdown 'case_transform' and change it to 'alternating WORD case'
    And I can click on 'section_separator_icon'
    And I can click on dropdown 'separator_type' and change it to 'Random Character'
    And I can click on 'section_padding_digits_icon'
    And I can click on dropdown 'padding_digits_before' and change it to '5'
    And I can click on dropdown 'padding_digits_after' and change it to '5'
    And I can click on 'section_padding_symbols_icon'
    And I can click on dropdown 'padding_type' and change it to 'Fixed'
    And I can click on dropdown 'num_passwords' and change it to '1'
    And I can click on 'generate_password_btn'
    Then I can see 'password_structure_container' will have text as 'ppdddddswordswordswordswordswordswordswordswordswordswordsdddddpp'
    Then I can see 'length_container' will have text as 'between 115 and 145 characters'
    Then I can see 'password_trafficlight_container' will have text as 'Good'
    Then I can see 'generated_password' will not be empty
    Then I can see 'generated_password' has '1' passwords

  Scenario: As a user I can see the error messages for required fields
    Given I am on the landing page
    And I can click on preset button 'XKCD'
    And I can click on 'section_separator_icon'
    And I can delete a chcrater in 'separator_type_char_tb'
    Then I can see 'password_structure_container' will have text as 'Invalid Config'
    Then I can see 'length_container' will have text as 'Invalid Config'
    Then I can see 'generate_password_btn' is disabled