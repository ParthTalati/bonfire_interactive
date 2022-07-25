Feature: Landing Page 
  # """
  # Providing more insights to include things like Benefit,
  # Roles for which this feature is built
  # and explanation of feature it self

  # * Having this leads to a better documentation
  # """

  Scenario: I cann access xkpasswd '''cann --> can ??'''
  # '''Elaborately explain the scenario, something like I can access xkpassword webpage'''
    Given I am on the landing page
    # '''titele --> title ??'''
    Then I can see titele as 'XKPasswd - Secure Memorable Passwords' 
    # '''Get rid of the extra space, maybe?'''
    Then I can see 'inspiredLinksContainer' will have text as 'Inspired by ' 

# '''File naming could be changed to LandingPage.feature'''