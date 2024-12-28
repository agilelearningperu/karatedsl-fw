Feature: Consulta de reservas

  Background:
    * url URLAPI

    @caso1
  Scenario: Consultar los ids de las reservas
    Given path 'booking'
    When method get
    Then status 200
    * def id = response[2].bookingid

  Scenario: Consultar los ids de las reservas con parametros
    Given path 'booking'
    And params { "firstname" : "John", "lastname" : "Smith" }
    When method get
    Then status 200

  @caso2
  Scenario: Consultar el detalle de la reserva
    * def res = call read('classpath:examples/booking/GET/get-booking.feature@caso1')
    Given path 'booking' , res.id
    And header Accept = 'application/json'
    When method get
    Then status 200