Feature: Consulta de health check

  Background:
    * url 'https://restful-booker.herokuapp.com'

  Scenario: Consultar los ping
    Given path 'ping'
    When method get
    Then status 201