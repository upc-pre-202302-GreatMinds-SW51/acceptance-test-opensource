Feature: Post Costs

  Como desarrollador que trabaja en la aplicación Ayni,
  Quiero registrar un nuevo costo mediante una API
  Para mantener el registro de costos.

  Scenario: Registro exitoso de un nuevo costo

    Given que tengo acceso a la API de registro de costos
    When envíe una solicitud con datos válidos para el registro de un costo
    Then el costo se registra exitosamente en la base de datos y recibo una confirmación.

    Examples:
      | Tipo de Costo   | Monto (USD) | Descripción         |
      | Semillas        | 50.00       | Compra de semillas  |
      | Fertilizantes   | 30.50       | Fertilización       |

  Scenario: Solicitud rechazada por datos inválidos de un nuevo costo

    Given que tengo acceso a la API de registro de costos
    When envíe una solicitud con datos inválidos de un nuevo costo
    Then la solicitud es rechazada.

    Examples:
      | Tipo de Costo   | Monto (USD) | Descripción         |
      |                 |
