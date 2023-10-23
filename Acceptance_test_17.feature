Feature: Post User

  Como desarrollador que trabaja en la aplicación Ayni,
  Quiero registrar a un nuevo usuario mediante una API para visualizar los usuarios afiliados a nuestra aplicación.

  Scenario: Registro exitoso de un nuevo usuario

    Given que tengo acceso a la API de registro de usuarios
    When envíe una solicitud para el registro de un nuevo usuario
    Then el usuario se registra satisfactoriamente.

    Examples:
      | Nombre    | Email                    | Contraseña | Rol          |
      | Juan      | juan@example.com         | password1 | Usuario      |
      | María     | maria@example.com        | secret123 | Administrador|

  Scenario: Solicitud rechazada por datos inválidos

    Given que tengo acceso a la API de registro de usuarios
    When envíe una solicitud con datos inválidos
    Then la solicitud es rechazada.

    Examples:
      | Nombre    | Email                    | Contraseña | Rol          |
      |           | juan@example.com         | password1 | Usuario      |
      | María     |                          | secret123 | Administrador|
