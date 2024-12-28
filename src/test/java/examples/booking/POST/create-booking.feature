Feature: Creación de reservas

  Background:
    * url URLAPI

  @caso3
  Scenario: Creación de reservas
    * def head = read('classpath:examples/booking/POST/headers/header.json')
    * def body = read('classpath:examples/booking/POST/body/body.json')
    Given path 'booking'
    And headers head
    And request body
    When method post
    Then status 200

  @caso4
  Scenario Outline: Creación de reservas
    * def head = read('classpath:examples/booking/POST/headers/header.json')
    * def body = read('classpath:examples/booking/POST/body/body-data.json')
    Given path 'booking'
    And headers head
    And request body
    When method post
    Then status 200

    Examples:
    |read ('classpath:examples/booking/POST/data/booking-data.csv')|