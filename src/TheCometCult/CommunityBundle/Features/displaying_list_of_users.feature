Feature: Displaying list of users
    In order to learn about community
    As a visitor
    I want to see list of users

    Background:
        Given there are community members:
        | name   | age | fb_id     | bio | homeland | occupancy |
        | Michal | 13  | 755560893 | xyz | Romania  | UK        |
        | Karol  | 7   | 755560892 | xxx | Romania  | Poland    |
        | Jacek  | 35  | 755560891 | abc | Bulgaria | Norway    |

    Scenario: Displaying overall number
        When I am on homepage
        Then I should see "3" in the ".home .description h2" element

    Scenario: Displaying members list
        When I am on homepage
        Then I should see "Michal, 13" in the ".people" element
        And I should see "Karol, 7" in the ".people" element
        And I should see "Jacek, 35" in the ".people" element

    @wip
    Scenario Outline: Displaying users's info
        When I am on the homepagege
        And I hover on <profile picture>
        Then I can see <name>, <age>
        And I can see <bio>
        And I can see <country>
        And I can see From: <living country>

        Examples:
        | name  | age | profile picture | bio | country  | living country |
        | Nico  | 13  | nico.jpg        | xyz | Romania  | UK             |
        | Karol | 7   | karol.jpg       | xxx | Romania  | Poland         |
        | Jacek | 35  | jacek.jpg       | abc | Bulgaria | Norway         |