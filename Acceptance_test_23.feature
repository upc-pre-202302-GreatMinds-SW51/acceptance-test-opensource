Feature: Get Profits by User

  Como desarrollador de la aplicación Ayni,
  Quiero obtener la información de las ganancias de un usuario mediante una API
  Para mostrarla en la aplicación.

  Scenario: Obtención exitosa de información de ganancias por usuario

    Given que tengo acceso a la API de obtención de información de ganancias por usuarios
    When solicite la información de las ganancias que realizó un usuario
    Then recibo la información de los usuarios.

    Examples:
      | ID de Usuario | Nombre    | Ganancias (USD) |
      | 12345         | Juan      | 500.00         |
      | 67890         | María     | 230.50         |

  Scenario: Solicitud de información no existente de ganancias por usuario

    Given que tengo acceso a la API de obtención de información de ganancias por usuarios
    When solicite información no existente de las ganancias que realizó un usuario
    Then recibo un mensaje indicando que no hay registros de usuarios realizando registros de ganancias.

    Examples:
      | ID de Usuario | Nombre    |
      | 54321         | Carlos    |
      | 98765         | Laura     |
