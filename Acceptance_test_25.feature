Feature: Adding and getting sales

  As a developer, I want to retrieve agricultural profits for a specific user through an API so that it can be available in the application.

  Background:
    Given an endpoint "http://localhost:%d/api/v1/sales" is available
  @sales-adding
  Scenario: Add sale
    When a Post Request is sent with values "name": "Venta de tomate","description": "Varios tomates","distance": "1234","depth": "23","weather": "50 grados","groundType": "Escarpado","season": "Invierno","imageUrl": "imagen"
    Then the response is provided with status 200
    And an Sale Resource is included in Response Body, with values "name": "Venta de tomate","description": "Varios tomates","distance": "1234","depth": "23","weather": "50 grados","groundType": "Escarpado","season": "Invierno","imageUrl": "imagen"

  @sales-getting
  Scenario: User wants to view profits but none exist
    Given an Sale Resource with values "id": 1, "name": "Venta de tomate","description": "Varios tomates","distance": "1234","depth": "23","weather": "50 grados","groundType": "Escarpado","season": "Invierno","imageUrl": "imagen"
    When a Get Request is sent 
    Then the response is provided with status 200
    And the sale Resources is include in Response Body showing all the sales
