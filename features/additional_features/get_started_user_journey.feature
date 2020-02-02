Feature: Checking login screen functionality blocks invalid login credentials
    
    As a user of SquareSpace
    I want to check "Get Started" user journey works as expected

    # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

    @loginBadPassword
        Scenario Outline: Check basic login functionality
        Given I visit "<page>" with a "<device>"
        And I press GET STARTED
        And I navidagte past I'M JUST BROWSING section if it shows
        And I can see 18 templates available to select from

    Examples:
    | page                         | device  |
    | https://www.squarespace.com/ | phone   |
    | https://www.squarespace.com/ | tablet  |
    | https://www.squarespace.com/ | desktop |

    # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 