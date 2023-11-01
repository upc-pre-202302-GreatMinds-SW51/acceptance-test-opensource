Feature: Creación y Obtención de Cultivos

  Como desarrollador, quiero añadir y obtener cultivos a través de una API, para que los usuarios puedan interactuar con la aplicación de manera eficiente.

  Background:
    Given un endpoint "http://localhost:%d/api/v1/crops" disponible

  Scenario: Creación de cultivo exitoso
    Given que el usuario proporciona la información del cultivo
    When realiza una solicitud de creación de cultivo con los valores propios
    Then se recibe un response con status 200
    And un Crops Resource es incluido en el Response Body con valores del cultivo

  Scenario: Obtención de cultivo exitoso
    Given que el usuario solicita información de un cultivo existente
    When realiza una solicitud de obtención de cultivo a través del endpoint GET /crops/{id}
    Then se recibe un response con status 200
    And usando Crops Resource este es incluido en el Response Body con valores del cultivo
