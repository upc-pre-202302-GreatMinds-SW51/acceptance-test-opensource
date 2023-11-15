Feature: Get a crop in specific

  As a Developer 
  I want information about a specific crop through an API 
  So that users can interact with the application efficiently.

  Background:
    Given an endpoint "http://localhost:%d/api/v1/crops/{cropId}" is available

  @Getting-crops
  Scenario: User wants to view a crop in specific

    Given a crop resoruce with values "id": 1, "name": "Potato","undergrowth": true,"fertilize": true,"oxygenate": true,"line": true,"hole": true,"watered": 50,"pestCleaning": 90,"productId": 1 is already exist
    When a Get Request is sent with values "cropId": 1
    Then the response is received with a status 200
    And An Crop Resource is included in Response Boody, with values "name": "Potato","undergrowth": true,"fertilize": true,"oxygenate": true,"line": true,"hole": true,"watered": 50,"pestCleaning": 90,"productId": 1

  @Getting-a-non-existent-crop
  Scenario: User wants to view their crops but dont exist

    Given a crop resource with "id":25 dont exist
    When a Get Request is sent with values "cropId": 25
    Then a response is received with status 404
    And A message is included with response body
      with values "Error 404 doesnt exist"


