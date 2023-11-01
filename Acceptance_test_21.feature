Feature: Obtención y Creación de Órdenes de Productos de Cultivo

  Como desarrollador, quiero implementar la obtención y creación de órdenes de productos de cultivo a través de una API para que esté disponible en la aplicación.

  Background:
    Given un endpoint "http://localhost:%d/api/v1/orders" disponible

  Scenario 01: Obtención de una orden
    Given que el usuario quiere ver una orden
    When el cliente realiza una solicitud de obtención GET a "/api/orders/1234"
    And existe una orden con el ID 1234 en la base de datos
    Then se recibe un response con status 200
    And el recurso de órdenes desarrollado es incluido en el Response Body con los valores de la orden

  Scenario 02: Usuario crea una orden
    Given que se desea crear una orden con los valores respectivos
    When el cliente envía una solicitud de creación POST a "/api/orders" con los valores respectivos
    Then se recibe un response con status 200
    And el recurso de órdenes desarrollado es incluido en el Response Body con los valores de la orden
