# Tarea Final MBD0011 - Magíster 2025

Este repositorio contiene la Tarea Final de la asignatura de Econometría (MBD0011). El proyecto se divide en tres partes principales, desarrolladas en notebooks de Jupyter, enfocadas en la simulación de modelos econométricos, análisis de "commodity currencies" y aplicación de la metodología Box-Jenkins a series de tiempo reales.

## Estructura del Proyecto

La carpeta `notebook/` contiene los siguientes tres cuadernos de trabajo, orientados a distintos fenómenos y metodologías de series de tiempo:

### 1. Parte1_Simulaciones.ipynb
Este notebook aborda la simulación de procesos estocásticos para analizar empíricamente el fenómeno de la **regresión espuria** y la efectividad de las correcciones de errores estándar.
* **Procesos simulados:** Modelos Autoregresivos de primer orden (AR(1)) tanto estacionarios como altamente persistentes, y modelos de Caminata Aleatoria (Random Walk).
* **Análisis:** Evaluación de falsos positivos en las pruebas de significancia tradicionales y contraste con errores estándar consistentes ante heterocedasticidad y autocorrelación (HAC / Newey-West).
* **Resultados:** Tablas de resultados estadísticos y gráficos de simulación, parametrizados para ser exportados automáticamente a la carpeta de resultados (`results/`).

### 2. Parte2_Commodity_currencies_v2.ipynb
En este notebook se realiza un análisis de las propiedades estadísticas de las series de tiempo correspondientes a monedas de países exportadores de materias primas ("commodity currencies") y tipos de cambio.
* **Transformaciones:** El análisis evalúa el comportamiento de las series en niveles, en logaritmos naturales, y mediante diferencias logarítmicas para observar los retornos a 1 mes y a 12 meses.
* **Visualización Estadística:** Generación de gráficos detallados que incluyen la evolución de la serie temporal, las Funciones de Autocorrelación (ACF) y Autocorrelación Parcial (PACF), Correlogramas e Histogramas de densidad sobrepuestos con distribuciones normales.
* **Exportación automatizada:** Las figuras se extraen dinámicamente a la carpeta `graphics/` de forma iterada, de forma que no se sobrescriban.

### 3. Parte3_Box_Jenkins.ipynb
El tercer notebook está enfocado en el modelamiento predictivo aplicando el clásico enfoque iterativo de **Box-Jenkins** utilizando datos macroeconómicos del Producto Interno Bruto del Reino Unido (UK GDP).
* **Fases:** 
  1. Identificación de la estructura ARIMA observando los rezagos en los correlogramas (ACF y PACF) para determinar la estacionalidad de la serie.
  2. Estimación de los parámetros del modelo correspondiente.
  3. Diagnóstico de los residuos para verificar el supuesto de ruido blanco en el modelo estimado.
* **Reportes:** Contiene código para formatear y exportar las tablas resumen de resultados estadísticos de los modelos probados a diferentes formatos (Excel y/o LaTeX).

## Organización de Directorios

El código asume la siguiente estructura de carpetas en el proyecto:
* `dataset/`: Archivos de datos de origen utilizados para el análisis empírico de las Partes 2 y 3.
* `notebook/`: Contiene el código fuente en formato de cuadernos interactivos de Jupyter.
* `results/`: Carpeta de destino (creada automáticamente al correr los scripts) estructurada en:
  * `graphics/`: Para almacenar imágenes (`.png`) de los correlogramas, dispersiones e histogramas.
  * `tables/`: Para almacenar exportaciones planas (`.xlsx` o `.tex`) de los cuadros de resultados.

## Entorno Virtual
Para ejecutar adecuadamente los análisis y evitar conflictos de compatibilidad, se recomienda instalar las dependencias detalladas en el archivo `requirements.txt`. El repositorio incluye además un script `Entorno_Virtual.bat` para facilitar el levantamiento del entorno de desarrollo.
