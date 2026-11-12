
Feature: Pruebas de autenticacion API de Demoblaze

  Background:
    * url 'https://api.demoblaze.com'

  @registro @positivo
  Scenario: Registrar un usuario nuevo
    * def username = 'nef_' + java.util.UUID.randomUUID()
    * def password = 'QaPrueba2026!'

    Given path 'signup'
    And request { username: '#(username)', password: '#(password)' }
    When method post
    Then status 200
    And match response.trim() == '""'

  @registro @negativo
  Scenario: Intentar registrar un usuario existente
    * def username = 'nef_dup_' + java.util.UUID.randomUUID()
    * def password = 'QaPrueba2026!'

    Given path 'signup'
    And request { username: '#(username)', password: '#(password)' }
    When method post
    Then status 200
    And match response.trim() == '""'

    Given path 'signup'
    And request { username: '#(username)', password: '#(password)' }
    When method post
    Then status 200
    And match response.errorMessage == 'This user already exist.'

  @login @positivo
  Scenario: Iniciar sesion con credenciales correctas
    * def username = 'nef_login_' + java.util.UUID.randomUUID()
    * def password = 'QaPrueba2026!'

    Given path 'signup'
    And request { username: '#(username)', password: '#(password)' }
    When method post
    Then status 200

    Given path 'login'
    And request { username: '#(username)', password: '#(password)' }
    When method post
    Then status 200
    And match response contains 'Auth_token:'

  @login @negativo
  Scenario: Iniciar sesion con credenciales incorrectas
    * def username = 'nef_wrong_' + java.util.UUID.randomUUID()
    * def password = 'QaPrueba2026!'

    Given path 'signup'
    And request { username: '#(username)', password: '#(password)' }
    When method post
    Then status 200

    Given path 'login'
    And request { username: '#(username)', password: 'ClaveIncorrecta123' }
    When method post
    Then status 200
    And match response.errorMessage == 'Wrong password.'
