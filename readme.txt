INSTRUCCIONES DE EJECUCIÓN - AUTOMATIZACIÓN API DEMOBLAZE

1. REQUISITOS PREVIOS

Antes de ejecutar el proyecto, verificar que estén instalados:

- Java JDK.
- Apache Maven.
- Conexión a Internet.

Comprobar las instalaciones desde una terminal:

java -version

mvn -version

2. OBTENER EL PROYECTO

Descargar o clonar el repositorio público de GitHub en el equipo.

3. ABRIR EL PROYECTO

Abrir una terminal y ubicarse en la carpeta raíz del proyecto, donde se encuentra el archivo pom.xml.

4. EJECUTAR LAS PRUEBAS

Ejecutar el siguiente comando:

mvn clean test

Maven descargará las dependencias necesarias y ejecutará automáticamente los escenarios de prueba definidos en Karate.

5. VERIFICAR LOS RESULTADOS

Al finalizar la ejecución, revisar la terminal y comprobar que aparezca:

BUILD SUCCESS

La ejecución final documentada obtuvo:

- 4 escenarios ejecutados.
- 4 escenarios aprobados.
- 0 escenarios fallidos.
- 0 errores.

6. CONSULTAR LOS REPORTES

El reporte general se genera en:

target/karate-reports/karate-summary.html

También se conserva una copia de los reportes y sus recursos en:

evidencias/reporte-karate/

Abrir karate-summary.html en un navegador web para consultar el resumen de resultados.

Para consultar el detalle de la funcionalidad, abrir:

com.sofka.qa.demoblaze.html

7. ARCHIVOS PRINCIPALES

- pom.xml: configuración del proyecto y dependencias.
- DemoblazeTest.java: clase encargada de ejecutar las pruebas con Karate y JUnit 5.
- demoblaze.feature: definición de los cuatro escenarios automatizados.
- conclusiones.txt: hallazgos y conclusiones del ejercicio.
- README.md: descripción general y documentación del proyecto.
- evidencias/: reportes generados durante la ejecución.

NOTA: Las pruebas dependen de la disponibilidad de los servicios públicos de Demoblaze y de una conexión a Internet.