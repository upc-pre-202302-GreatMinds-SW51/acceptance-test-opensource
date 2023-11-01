Feature: Autenticación, Creación y Obtención de Usuarios

  Como desarrollador, quiero implementar autenticación, creación y obtención de usuarios a través de una API para que pueda estar disponible la creación de usuarios e iniciar sesión para la aplicación.

  Background:
    Given un endpoint "http://localhost:%d/api/v1/users" disponible

  Scenario Outline: Usuario accede con credenciales válidas
    Given que un usuario ha ingresado sus credenciales <credenciales>
    When realiza una solicitud de autenticación
    Then el sistema debería retornar un token de acceso válido
    And el estado de la respuesta debe ser 200 OK

    Examples:
      | credenciales       |
      | usuario1, pass1    |
      | usuario2, pass2    |
      | usuario3, pass3    |

  Scenario Outline: Se crea un nuevo usuario
    Given que un usuario quiere registrarse en la aplicación
    When una solicitud de creación es enviada con valores <nombre>, <correo>, <contraseña>
    Then se recibe un response con status 200
    And se incluye un User Resource en el Response Body, con valores <nombre>, <correo>, <contraseña>

    Examples:
      | nombre | correo              | contraseña     |
      | Juan   | juan123@gmail.com   | contraseña567 |
      | María  | maria456@gmail.com  | prueba123      |
