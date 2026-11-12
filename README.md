# Automatización de pruebas API - Demoblaze

## 1. Descripción del proyecto

Proyecto de automatización de pruebas de servicios REST de Demoblaze, desarrollado con Karate Framework y JUnit 5.

El objetivo es validar los servicios de registro de usuarios (Signup) e inicio de sesión (Login), comprobando respuestas exitosas y escenarios negativos.

## 2. Herramientas y tecnologías

- Java 25.0.5 (Eclipse Temurin).
- Apache Maven 3.10.0.
- Karate Framework 1.5.2.
- JUnit 5.
- Visual Studio Code.

## 3. Servicios evaluados

**Registro de usuarios (Signup)**

- Endpoint: https://api.demoblaze.com/signup
- Método HTTP: POST.
- Datos enviados: username y password.

**Inicio de sesión (Login)**

- Endpoint: https://api.demoblaze.com/login
- Método HTTP: POST.
- Datos enviados: username y password.

## 4. Escenarios automatizados

| N.º | Escenario | Tipo |
|---|---|---|
| 1 | Registrar un usuario nuevo | Positivo |
| 2 | Intentar registrar un usuario existente | Negativo |
| 3 | Iniciar sesión con credenciales correctas | Positivo |
| 4 | Iniciar sesión con contraseña incorrecta | Negativo |

Los escenarios utilizan nombres de usuario generados dinámicamente mediante UUID para reducir conflictos con registros anteriores.

## 5. Estructura del proyecto

```text
ejercicio-karate-api/
├── pom.xml
├── README.md
├── readme.txt
├── conclusiones.txt
├── evidencias/
│   └── reporte-karate/
│       ├── res/
│       ├── com.sofka.qa.demoblaze.html
│       ├── com.sofka.qa.demoblaze.karate-json.txt
│       ├── karate-summary.html
│       ├── karate-summary-json.txt
│       ├── karate-tags.html
│       ├── karate-timeline.html
│       ├── favicon.ico
│       ├── karate-labs-logo-ring.svg
│       ├── karate-logo.png
│       └── karate-logo.svg
└── src/
    └── test/
        └── java/
            └── com/
                └── sofka/
                    └── qa/
                        ├── DemoblazeTest.java
                        └── demoblaze.feature
```

## 6. Requisitos previos

Para ejecutar el proyecto se requiere:

- Java JDK instalado y configurado.
- Apache Maven instalado y configurado.
- Conexión a Internet para descargar dependencias y acceder a los servicios de Demoblaze.

Verificar las instalaciones desde una terminal:

```bash
java -version
mvn -version
```

## 7. Instrucciones de ejecución

1. Descargar o clonar el repositorio de GitHub.
2. Abrir una terminal.
3. Ubicarse en la carpeta raíz `ejercicio-karate-api`, donde se encuentra el archivo `pom.xml`.
4. Ejecutar el siguiente comando:

```bash
mvn clean test
```

5. Esperar a que Maven descargue las dependencias necesarias y ejecute las pruebas.
6. Verificar el resultado de la ejecución en la terminal.

Para consultar el reporte HTML, abrir el archivo:

```text
target/karate-reports/karate-summary.html
```

También se conserva una copia de los reportes en:

```text
evidencias/reporte-karate/
```

## 8. Resultados de ejecución

En la ejecución final realizada durante el desarrollo se obtuvieron los siguientes resultados:

- Pruebas ejecutadas: 4.
- Pruebas aprobadas: 4.
- Pruebas fallidas: 0.
- Errores: 0.
- Tiempo reportado por el informe de Karate: 4.628 ms.
- Tiempo reportado por Maven para la ejecución de la clase: 7.380 segundos.

**Resultado de la ejecución: BUILD SUCCESS.**

## 9. Reportes y evidencias

Karate genera automáticamente reportes HTML, archivos de resultados y recursos necesarios para su visualización.

Se conserva una copia de estos archivos en `evidencias/reporte-karate/`, incluyendo:

- Reporte general de ejecución.
- Reporte detallado de la funcionalidad probada.
- Resultados en formato JSON.
- Reportes de etiquetas y línea de tiempo.
- Archivos CSS, JavaScript, imágenes y demás recursos utilizados por los reportes.

Para consultar el resumen, abrir `karate-summary.html` en un navegador web. Para consultar el detalle de la funcionalidad, abrir `com.sofka.qa.demoblaze.html`.

## 10. Consideraciones

- Las pruebas interactúan con los servicios públicos de Demoblaze.
- Los usuarios de prueba se generan dinámicamente para evitar conflictos con registros anteriores.
- La disponibilidad del servicio externo y la conectividad pueden afectar futuras ejecuciones.
- Los resultados documentados corresponden a la ejecución realizada durante el desarrollo de este proyecto.
- Las credenciales utilizadas son datos de prueba y no corresponden a cuentas personales.