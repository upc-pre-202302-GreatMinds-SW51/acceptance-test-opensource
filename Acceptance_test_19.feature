Feature: Post Crops

  Como desarrollador que trabaja en la aplicación Ayni,
  Quiero obtener la información de los cultivos mediante una API
  Para que sean mostrados en la aplicación.

  Scenario: Registro exitoso de un cultivo

    Given que tengo acceso a la API de registro de cultivos
    When envíe una solicitud con datos válidos para el registro de un cultivo
    Then el cultivo se registra exitosamente.

    Examples:
      | Tipo de Cultivo | Fecha de Plantación | Cantidad (kg) |
      | Maíz           | 2023-10-15         | 500          |
      | Tomates        | 2023-09-01         | 300          |

  Scenario: Solicitud rechazada por datos inválidos

    Given que tengo acceso a la API de registro de cultivos
    When envío una solicitud con datos inválidos
    Then la solicitud es rechazada con un mensaje de error.

    Examples:
      | Tipo de Cultivo | Fecha de Plantación | Cantidad (kg) |
      |                | 2023-10-15         | 500          |
      | Maíz           |                    | 300          |
