Feature: Checking login screen functionality blocks invalid login credentials
    
    As a user of SS
    I want to check logging in is working correctly
    So that I
        - Am presented with a LOG IN button on home page
        - Get correct error message with invalid password
        - Get correct error message with invalid email

    # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

    @loginBadPassword
        Scenario Outline: Check basic login functionality
        Given I visit "<page>" with a "<device>" and press LOG IN
        And I enter "<email>" with "<password>"
        And I press LOG IN button
        And I see password error message

    Examples:
    | page                         | device  | email         | password | error                                          |
    | https://www.squarespace.com/ | phone   | lol@gmail.com | 123      | Please enter a valid email address or username.|
    | https://www.squarespace.com/ | tablet  | lol@gmail.com | 123      | Please enter a valid email address or username.|
    | https://www.squarespace.com/ | desktop | lol@gmail.com | 123      | Please enter a valid email address or username.|

    # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

    @loginBadEmail
        Scenario Outline: Check basic login functionality
        Given I visit "<page>" with a "<device>" and press LOG IN
        And I enter "<email>" with "<password>"
        And I press LOG IN button
        And I see email error message

    Examples:
    | page                         | device  | email                        | password | error                                          |
    | https://www.squarespace.com/ | phone   | 1234561236678lol@gmail.com   | xyz      | Please enter a valid email address or username.|
    | https://www.squarespace.com/ | tablet  | 1234561236678lol@gmail.com   | xyz      | Please enter a valid email address or username.|
    | https://www.squarespace.com/ | desktop | 1234561236678lol@gmail.com   | xyz      | Please enter a valid email address or username.|





