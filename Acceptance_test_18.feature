Feature: Get User

  Como desarrollador parte del equipo de GreatMinds,
  Quiero obtener la información de un usuario mediante una API para mostrarla en la aplicación.

  Scenario: Obtención exitosa de información de un usuario

    Given que tengo a disposición la obtención de información de usuarios por un API
    When solicite información de un usuario registrado
    Then recibo la información del usuario.

    Examples:
      | ID de Usuario |
      | 12345         |
      | 67890         |

  Scenario: Solicitud de información inválida de un usuario

    Given que tengo a disposición la obtención de información de usuarios por un API
    When solicito información inválida de un usuario
    Then recibo un mensaje de error.

    Examples:
      | ID de Usuario |
      | "abc"         |
      | 98765         |
