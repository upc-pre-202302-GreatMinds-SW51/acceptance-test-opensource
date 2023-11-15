Feature: User registration

  As a Developer 
  I want to implement security features through an API
  So that the application is not vulnerable to attacks

  Background: Given the endpoint "http://localhost:%d/api/v1/users"
  @User-registration
  Scenario: Successful registration of a new user
    When a Post Request is sent with values "Jorge", "jorge@gmail.com", "contrasenia"
    Then a response is received with Status 200
    And a message as included in Response Body
      with values "Registration succesfull"
  @User-authorized
  Scenario: Successful login of an user
    Given an User Resource with values "Jorge", "jorge@gmail.com", "contrasenia" is alredy exist
    When a Post Request is sent with values "Jorge", "jorge@gmail.com", "contrasenia"
    Then a Response is received with Status 200
    And a message is include in Responde Body
      with values "Succesful login"
