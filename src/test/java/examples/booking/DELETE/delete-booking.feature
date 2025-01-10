Feature: Eliminar reservas

  Background:
    * url URLAPI

  Scenario: Eliminar una reserva
    * def res = call read('classpath:examples/auth/create-token.feature@tokenOK')
    * def res2 = call read('classpath:examples/booking/GET/get-booking.feature@caso1')
    Given path 'booking' , res2.id
    And headers { Content-Type: 'application/json' }
    And cookie token = res.response.token
    When method delete
    Then status 201