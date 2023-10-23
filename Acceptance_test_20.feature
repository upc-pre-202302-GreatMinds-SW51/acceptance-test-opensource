Feature: Get Crops

  Como desarrollador que trabaja en la aplicación Ayni,
  Quiero obtener la información de los cultivos mediante una API
  Para mostrarla en la aplicación.

  Scenario: Obtención de información de cultivos existentes

    Given que tengo acceso a la API de registro de cultivos
    When solicite los campos de información de cultivos
    Then obtendré el registro de los cultivos con la información existente.

    Examples:
      | ID de Cultivo | Tipo de Cultivo | Fecha de Plantación | Cantidad (kg) |
      | 12345         | Maíz           | 2023-10-15         | 500          |
      | 67890         | Tomates        | 2023-09-01         | 300          |

  Scenario: Solicitud rechazada por datos inválidos de un nuevo cultivo

    Given que tengo acceso a la API de registro de cultivos
    When envíe la solicitud con datos inválidos de un nuevo cultivo
    Then la solicitud es rechazada.

    Examples:
      | Tipo de Cultivo | Fecha de Plantación | Cantidad (kg) |
      |                | 2023-10-15         | 500          |
      | Maíz           |                    | 300          |
