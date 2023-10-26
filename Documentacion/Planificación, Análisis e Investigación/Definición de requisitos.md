# A. Definición de requisitos

## 1. Arquitectura y funcionalidades Generales
- El sitio web actuará como un componente núcleo que permitirá el redireccionamiento a otros apartados de la misma institución.
- Integrable con otras plataformas por ejemplo innova utem o proteinlab utem.
- La plataforma permitirá el seguimiento y registro constante del desarrollo de los catálogos de las recetas y su experimentación.

## 2. Base de datos
- Creación de una base de datos robusta que permita almacenar todas las recetas y datos de usuarios que sean relevantes que será administrada con MySQL.

## 3. Catalogo y las recetas
- Inspirarse en sitios webs similares para la toma de funcionalidades y usarlos como Guía como sitio web Materiom.
- Los usuarios podrán subir y gestionar espacios de trabajo con sus respectivas recetas.
- Desglose detallado de cada una de las recetas.
- Cada receta tendrá un paso a paso detallado.
- Posibilidad agregar fotos y videos en cada paso para ilustrar el proceso.
- Cada paso de la receta puede contener múltiples detalles, como temperatura, tiempo de cocción y los resultados de la materia como su estructura, flexibilidad, etc.
- Las recetas pueden filtrarse/Categorizarse por ejemplo en los ingredientes que estas poseen, el proceso, el resultado final por decir algunos.

## 4. Gestión de Usuarios
- Existencia de múltiples usuarios con diferentes niveles, la estructura inicial será administrador, Estándar e invitado.
- Los usuarios con los permisos adecuados podrán modificar recetas y permitir cuáles serán visibles a los otros usuarios.
- Las recetas tendrán una restricción de visibilidad según el nivel de permisos del usuario.
- Los usuarios podrán verificarse a través de un correo.
- Los usuarios podrán recuperar su contraseña en caso de ser olvidada.

## 5. Interacción y funcionalidades adicionales
- Incorporación de formularios de contacto.
- Permitir la búsqueda de recetas específicas o la utilización de filtros.

# B. Listado de Funcionalidades

## 1. Enumerar todas las funcionalidades deseadas:

### Registro y Gestión de Usuarios:
- Registro de usuarios con diferentes niveles de acceso (Administrador, Estándar, Invitado).
- Inicio de sesión y recuperación de contraseña.
- Perfil de usuario con detalles personales y recetas creadas/modificadas.

### Gestión de Recetas:
- Creación de nuevas recetas con un formulario detallado.
- Edición y actualización de recetas existentes.
- Eliminación de recetas (solo para usuarios con permisos adecuados).
- Visualización detallada de cada receta con imágenes, videos y pasos.

### Búsqueda y Filtrado:
- Búsqueda de recetas por nombre, ingredientes, usuario creador, etc.
- Filtrado de recetas según categorías o etiquetas.

### Formulario de Contacto:
- Formulario para que los usuarios puedan enviar consultas o feedback.
- Notificaciones al administrador o equipo responsable cuando se envía un nuevo mensaje.

### Integración con Otras Plataformas:
- API o mecanismos para integrar el sitio con otras plataformas o sistemas.

## 2. Priorizar las funcionalidades según su importancia:

### Alta Prioridad:
- Registro y Gestión de Usuarios.
- Gestión de Recetas.
- Búsqueda y Filtrado.

### Prioridad Media:
- Formulario de Contacto.
- Integración con Otras Plataformas.

## 3. Detallar cómo debe funcionar cada característica:

### Registro y Gestión de Usuarios:
- Los usuarios deben proporcionar un correo electrónico, contraseña y otros detalles básicos para registrarse.
- Los usuarios recibirán un correo electrónico de confirmación después del registro.
- Los administradores pueden asignar o cambiar niveles de acceso a los usuarios.

### Gestión de Recetas:
- Al crear una receta, los campos como "Nombre", "Ingredientes" y "Pasos" serán obligatorios.
- Los usuarios pueden agregar imágenes y videos en cada paso de la receta.
- Las recetas editadas tendrán un registro o historial de cambios.

### Búsqueda y Filtrado:
- Los usuarios pueden ingresar palabras clave en una barra de búsqueda.
- Los resultados se mostrarán en orden de relevancia o fecha de creación.

# C. Revisión y Ajustes

## 1. Revisar la lista de funcionalidades y hacer ajustes según sea necesario:
- Registro y Gestión de Usuarios: ¿Hay algún otro nivel de usuario que deba ser considerado? ¿Quizás un "Moderador" o un "Colaborador"?
- Gestión de Recetas: ¿Debería haber una opción para que los usuarios puedan comentar o calificar las recetas? ¿Quizás un sistema de calificación por estrellas o comentarios?
- Búsqueda y Filtrado: ¿Hay alguna otra categoría o etiqueta que los usuarios puedan encontrar útil al buscar recetas?
- Hacer un control de versiones en caso de hacer actualizaciones al sitio web.

## 2. Considerar posibles escenarios y cómo el sistema debería manejarlos:
- Recetas Duplicadas: ¿Qué sucede si dos usuarios intentan subir una receta muy similar o idéntica? ¿Debería haber un sistema de revisión o aprobación?
- Problemas de Acceso: Si un usuario olvida su contraseña o no puede acceder a su cuenta, ¿cómo se manejará el proceso de recuperación?
- Contenido Inapropiado: Si un usuario sube contenido inapropiado o no relacionado, ¿cómo se manejará? ¿Habrá un sistema de reportes o moderación?

## 3. Dudas adicionales:
- ¿Cómo se manejarán las actualizaciones y mejoras del sitio en el futuro?
- ¿Qué sucede si un usuario quiere eliminar su cuenta y todas las recetas asociadas a ella?
- ¿Habrá alguna forma de destacar o promocionar ciertas recetas en la plataforma?
- ¿Cómo se manejarán las notificaciones para los usuarios? ¿Recibirán alertas o correos electrónicos sobre actualizaciones o cambios relevantes?
- ¿Se considerará la posibilidad de integrar redes sociales para compartir recetas o promocionar el sitio?
- ¿Qué tipo de soporte se ofrecerá a los usuarios si encuentran problemas o tienen preguntas?
- ¿Habrá algún tipo de notificación para los usuarios? Ejemplo en caso de que se modifique la visibilidad de una receta.
- ¿El sitio será responsive? Es decir, ¿se adaptará a dispositivos móviles y tablets?

