library(readr)
library(dplyr)

datos_acciones <- read_delim("https://raw.githubusercontent.com/jvega68/EA3/master/datos/J%26W/T8-4.DAT", delim = " ", col_names = FALSE)
datos_acciones_num <- datos_acciones %>% select(where(is.numeric))
datos_acciones_limpios <- na.omit(datos_acciones_num)
datos_acciones_limpios <- datos_acciones_limpios[!apply(datos_acciones_limpios, 1, function(x) any(is.infinite(x))),]

datos_cereales <- read_delim("https://raw.githubusercontent.com/jvega68/EA3/master/datos/J%26W/T11-9.DAT", delim = " ", col_names = FALSE)
datos_cereales_num <- datos_cereales %>% select(X5, X7, X9, X11, X13, X17, X19, X21)
datos_cereales_limpios <- na.omit(datos_cereales_num)

pca_acciones <- prcomp(datos_acciones_limpios, scale = FALSE)
summary(pca_acciones)
pca_acciones_

# Para verificación de normalidad, podrías usar:
apply(datos_acciones_limpios, 2, shapiro.test)
apply(datos_cereales_limpios, 2, shapiro.test)


norm <- prcomp(datos_acciones_limpios, scale = TRUE)
summary(pca_acciones_norm)

pca_cereales <- prcomp(datos_cereales_limpios, scale = FALSE)
summary(pca_cereales)
pca_cereales_norm <- prcomp(datos_cereales_limpios, scale = TRUE)
summary(pca_cereales_norm)


# Para un QQ-plot de la primera columna numérica de tus datos de acciones
qqnorm(datos_acciones_limpios[[1]], main = "QQ-Plot para la primera columna de acciones")
qqline(datos_acciones_limpios[[1]], col = "red")


# pca cuales son las variables para separar a mis jugadores
# factores cuales variables son las más correlacionadas

# como diferentes unidades, podemos hacer correlación
# si estadarizamos con covarianzas

# Para un QQ-plot de la primera columna numérica de tus datos de cereales
qqnorm(datos_cereales_limpios[[1]], main = "QQ-Plot para la primera columna de cereales")
qqline(datos_cereales_limpios[[1]], col = "red")




# Normalizar los datos de cereales
datos_cereales_norm <- scale(datos_cereales_limpios)

# QQ-plot para la primera columna de datos de cereales normalizados
qqnorm(datos_cereales_norm[,1], main = "QQ-Plot para la primera columna de cereales normalizada")
qqline(datos_cereales_norm[,1], col = "red")

  