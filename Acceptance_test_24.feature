Feature: Getting products related to crops

  As a developer, 
  I want to obtain information about products (Products) related to crops (Crops) through an API
  So that it can be available in the application
  Background:
    Given an endpoint "http://localhost:%d/api/v1/products/{productId}/crops" is available
  @Crops-by-product-Getting
  Scenario: User wants to see all crops related to a product
    Given a product Resource exist with "id": 1
    And a Crop resource exist with "productId" : 1
    Then the response is provided with status 200
    And a Product Resource is included in Response Body with values "id": 1, "name": "Potato","undergrowth": true,"fertilize": true,"oxygenate": true,"line": true,"hole": true,"watered": 50,"pestCleaning": 90,"productId": 1
  @None-exist-Crops-by-product-Getting
  Scenario: User wants to see all crops related to a product but crops doesnt exist
    Given a product resource with "id":1 exist
    And a Crop resource exist with "cropId" : 25 doesnt exist
    Then the response is provided with status 404
    And A message is included with response body
      with values "Error 404 doesnt exist"

