Feature: Actualización Parcial de reservas

  Background:
    * url URLAPI

  @caso3
  Scenario: Actualizar algunos datos de la reserva
    * def body =
      """
      {
    "firstname" : "Alexander",
    "lastname" : "Avila"
      }
      """
    * def head = read('classpath:examples/booking/PATCH/header/header.json')
    * def res = call read('classpath:examples/auth/create-token.feature@tokenOK')
    * def res2 = call read('classpath:examples/booking/GET/get-booking.feature@caso1')
    Given path 'booking' , res2.id
    And headers head
    And cookie token = res.response.token
    And request body
    When method patch
    Then status 200

  Scenario: Actualizar otros datos de la reserva
    * def body =
      """
      {
    "totalprice" : 234,
    "depositpaid" : false
      }
      """
    * def head = read('classpath:examples/booking/PATCH/header/header.json')
    * def res = call read('classpath:examples/auth/create-token.feature@tokenOK')
    * def res2 = call read('classpath:examples/booking/GET/get-booking.feature@caso1')
    Given path 'booking' , res2.id
    And headers head
    And cookie token = res.response.token
    And request body
    When method patch
    Then status 200