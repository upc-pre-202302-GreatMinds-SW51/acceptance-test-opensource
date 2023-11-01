Feature: Obtención y Creación para Productos Agrícolas

  Como desarrollador, quiero obtener y crear productos agrícolas a través de una API. Esto permitirá a los usuarios acceder y crear registros de productos agrícolas en la aplicación.

  Background:
    Given un endpoint "http://localhost:%d/api/v1/products" disponible

  Scenario: Obtención de un producto
    Given que el usuario solicita información de un producto existente
    When realiza una solicitud de obtención de cultivo a través del endpoint GET /products/{id}
    Then se recibe un response con status 200
    And usando Products Resource este es incluido en el Response Body con valores del producto

  Scenario: Creación de un producto exitoso
    Given que se quiere añadir un nuevo producto
    When el usuario realice una petición de creación POST a /api/products con los valores del nuevo producto agrícola
    Then se recibe un response con status 200
    And el recurso de cultivos desarrollado es incluido en el Response Body con los valores del producto

    Examples:
      | nombre      | tipo         | cantidad | precio |
      | Manzanas    | Fruta        | 100      | 2.50   |
      | Tomates     | Verdura      | 200      | 1.75   |
      | Zanahorias  | Verdura      | 150      | 1.00   |

