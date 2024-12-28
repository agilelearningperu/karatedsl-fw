Feature: Creación de token de sesión

  Background:
    * url URLTOKEN

@tokenOK
  Scenario: Creación de token exitoso
    * def body =
      """
      {
        "username" : "admin",
        "password" : "password123"
      }
      """
    Given path 'auth'
    And header Content-Type = 'application/json'
    And request body
    When method post
    Then status 200

  Scenario: Creación de token fallido
    * def body =
      """
      {
        "username" : "admin123",
        "password" : "password123"
      }
      """
    Given path 'auth'
    And header Content-Type = 'application/json'
    And request body
    When method post
    Then status 200
    And match response == {"reason":"Bad credentials"}