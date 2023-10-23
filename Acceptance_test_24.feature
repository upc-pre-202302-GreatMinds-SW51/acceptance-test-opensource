Feature: Post Profits

  Como desarrollador que trabaja en la aplicación Ayni,
  Quiero registrar una nueva ganancia mediante un API
  Para mantener el registro de ganancias.

  Scenario: Registro exitoso de una nueva ganancia

    Given que tengo acceso a la API de registro de ganancias
    When envíe una solicitud con datos válidos para el registro de una ganancia
    Then la ganancia se registra exitosamente en la base de datos y recibo una confirmación.

    Examples:
      | Monto (USD) | Descripción           |
      | 200.00      | Venta de tomates      |
      | 350.50      | Venta de maíz         |

  Scenario: Solicitud rechazada por datos inválidos de una nueva ganancia

    Given que tengo acceso a la API de registro de ganancia
    When envíe una solicitud con datos inválidos de una nueva ganancia
    Then la solicitud es rechazada.

    Examples:
      | Monto (USD) | Descripción           |
      |             | Venta de lechugas     |
      | 500.00      |                      |
