Feature: Actualización de reservas

  Background:
    * url URLAPI

  @caso3
  Scenario: Actualizar reserva
    * def head = read('classpath:examples/booking/PUT/header/header.json')
    * def body = read('classpath:examples/booking/PUT/body/body.json')
    * def res = call read('classpath:examples/auth/create-token.feature@tokenOK')
    * def res2 = call read('classpath:examples/booking/GET/get-booking.feature@caso1')
    Given path 'booking' , res2.id
    And headers head
    And cookie token = res.response.token
    And request body
    When method put
    Then status 200

  Scenario: Actualizar reserva
    * def head = read('classpath:examples/booking/PUT/header/header.json')
    * def body = read('classpath:examples/booking/PUT/body/body.json')
    * def res2 = call read('classpath:examples/booking/GET/get-booking.feature@caso1')
    Given path 'booking' , res2.id
    And headers head
    And header Authorization = TOKEN
    And request body
    When method put
    Then status 200