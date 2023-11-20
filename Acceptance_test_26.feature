Feature: Change order status
  As a developer, 
  I want the status of an order to be changed using an API
  So that there is a state standard in the web application

  Background: Given the endpoints "http://localhost:%d/api/v1/orders/{orderId}/finalizations" and "http://localhost:%d/api/v1/orders/{orderId}/finalizations" is available
  
  @order-status-changed-to-finalizated
  Scenario: Order status changed to finalizated
    Given a order resource with "id:" 1
    When a Post Request is sent with values "orderId": 1
    Then a response is received with status 200

  @order-status-changed-to-qualificated
  Scenario: Order status changed to qualificated
    Given a order resource with "id:" 1
    When a Post Request is sent with values "orderId": 1
    Then a response is received with status 200



