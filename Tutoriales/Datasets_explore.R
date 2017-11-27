# R es una herramienta estadística para análisis estadístico que nos permite utilizar recursos online ya sea para análisis de datos, 
# explorar bases de datos, crear visualizaciones, etc. Para esto, es necesario saber la dirección API del conjunto de datos, también 
# conocida como url del archivo de conjunto de datos que deseamos trabajar. La dirección del mismo no siempre está explícita. En el caso
# de la plataforma de CKAN en indicadores.pr y data.estadisticas.pr se puede ver el link explícitamente en la pantalla del recurso. Si el link no se encuentra
# explícito en el recurso,para obtenerlo  debe presionar el "right click" para exportar o descargar y luego seleccionar 
# "copiar dirección del enlace. Para efecto de ejemplo puede utilizar el siguiente link:
# https://indicadores.estadisticas.pr/dataset/702d4192-a9f9-483e-b003-05e2c387bd6e/resource/ab758709-173d-41dd-a649-5b68db8921f6/download/pmi_datos.csv

# El primer paso para trabajar con R es preaparar  el programa con las herramientas necesarias para lograr nuestro objetivo.
# Para este tutorial usaremos un paquete llamado data.table el cual nos permite extraer bases de datos del internet. Importante tener 
# la versión del programa R actualizada.

# Instalamos los siguientes paquetes
install.packages("data.table", repos='http://cran.us.r-project.org', dependencies=TRUE)
install.packages("ggplot2", repos='http://cran.us.r-project.org', dependencies=TRUE)

# Una vez instalado, se carga al programa
library(data.table)
library(ggplot2)

# Es importante que la dirección del url termine con la extensión .csv. También es importante colocar la dirección dentro de las comillas.
url_datos = " dirección API del conjunto de datos que desea explorar " 

# Bajar el conjunto de datos y cargarlo a R.
datos = fread(url_datos)

# Ya con los datos cargados en el programa, seleccionamos los indicadores que queremos graficar. 
# Primero se deben imprimir los nombres de cada indicador de la base de datos en la consola.
colnames(datos)

# Usualmente las fechas son detectadas como caracteres y los indicadores como enteros o números.
# Primero verificamos que formato tiene nuestro conjunto de datos.
str(df) 

# Para poder seleccionar los indicadores utilizamos el siguente formato:
df[, ]  # Si indicador esta en la columna numero dos del subconjunto creado, entonces, df[,2]
df$ # Si el nombre de la variable se llama Month, 

# Luego de saber como identificar variables dentro de un conjunto de datos, creamos la serie de tiempo.
# Para generar la serie de tiempo es importante que el programa entienda el formato de las fechas. En el siguiente paso
# preparamos el formato de fechas para que R reconozca las mismas. Utilizando cualquiera de los métodos mencionados anteriormente,
# se debe seleccionar la columna que contiene las fechas y escoger uno de los formatos de selección de columna;

# Primer formato de selección de columnas 
df[,1] = as.Date(df[[1]]) # En caso de que la primera columna sea 1.

# Segundo formato de selección de columnas
df$Month = as.Date(df$Month) # En caso de que la columna se llame Month

# Graficamos
p = ggplot(df, aes(x = (fechas) ,y = (indicador))) + geom_line() # Genera la serie de tiempo y la guarda en la variable p

#Ejemplo: Suponer que la columna de fechas se llama Dates y mi indicador Total:
p = ggplot(df, aes(x = Dates ,y = Total)) + geom_line()

# Importante: Si el indicador contiene espacio en su nombre, utilizar este método: 
p = ggplot(df , aes(x= Dates, y =df$'Puerto Rico'))+geom_line() # En caso de que el indicador se llame "Puerto Rico"

# Imprime la gráfica.
p
