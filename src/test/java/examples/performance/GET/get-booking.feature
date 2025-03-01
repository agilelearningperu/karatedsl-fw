Feature: Consulta de reservas

  Background:
    * url URLAPI

  Scenario: Consultar los ids de las reservas
    Given path 'booking'
    When method get
    Then status 200
