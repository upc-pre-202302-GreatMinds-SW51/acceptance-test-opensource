Feature: Obtención y Creación de Registros Financieros (Costos y Ganancias)

  Como desarrollador, quiero registrar y obtener la información de los costos y ganancias mediante una API para que pueda estar disponible en la aplicación.

  Background:
    Given un endpoint "http://localhost:%d/api/v1/(insertar)" disponible

  Scenario: Obtención de un costo
    Given que un usuario quiere obtener un registro de un costo existente con valores "Compra de gasolina", "3 Galones de gasolina", "costo", "100"
    When se realice una solicitud de obtención
    Then se recibe un response con status 200
    And en el Response Body se incluyen los valores "Compra de gasolina", "3 Galones de gasolina", "costo", "100"

  Scenario: Registro de una ganancia
    Given que el usuario desea registrar una ganancia
    When realice una solicitud de creación con valores "Venta de manzanas", "5 cajas", "ganancia", "500"
    Then se recibe un response con status 200
    And en el Response Body se incluyen los valores "Venta de manzanas", "5 cajas", "ganancia", "500"

