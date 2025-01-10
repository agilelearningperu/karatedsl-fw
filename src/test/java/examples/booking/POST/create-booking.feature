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
    * def schema = read('classpath:examples/booking/POST/schema/schema-post.json')
    Given path 'booking'
    And headers head
    And request body
    When method post
    Then status 200
    And match response == schema
    And match response.booking.firstname == '<nombre>'
    And match response.booking.lastname == '<apellidos>'
    And match response.booking.totalprice == <precio>
    And match response.booking.depositpaid == <deposito>
    And match response.booking.bookingdates.checkin == '<fecha_inicio>'
    And match response.booking.bookingdates.checkout == '<fecha_fin>'
    And match response.booking.additionalneeds == '<adicional>'

    Examples:
    |read ('classpath:examples/booking/POST/data/booking-data.csv')|