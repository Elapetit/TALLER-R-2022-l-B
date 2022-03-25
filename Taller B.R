#Taller B
#Elaborado por: Gabriela Cucunuba
#Colaborador:
#Fecha de elaboracion:
#Fecha ultima modificacion:

#1. Importar bases de datos

#Filtrar de cada base de datos las variables: directorio, secuencia_p, orden, P6020, P6040, P6030S1, P6440, P6450, P6920, INGLABO, DPTO, fex_c_2011, ESC, MES y P6050

#2019
library(tidyverse)
data_ocu_cabe_2019=readRDS('data/input/2019/Cabecera - Ocupados.rds') %>% 
  dplyr::select(.,directorio, secuencia_p, orden, mes, dpto, P6920, fex_c_2011)
names(data_ocu_cabe_2019) #conocer los nombres de las variables, para el caso, P6020, P6030S1, P6440, P6450, P6050, P6040, INGLABO, ESC, no se encuentran en el dfm

data_inac_cabe_2019=readRDS('data/input/2019/Cabecera - Inactivos.rds') %>% 
  dplyr::select(.,directorio, secuencia_p, orden, mes, dpto, fex_c_2011)
names(data_inac_cabe_2019) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6050, P6920, INGLABO, ESC, no se encuentran en el dfm

data_deso_cabe_2019=readRDS('data/input/2019/Cabecera - Desocupados.rds') %>% 
  dplyr::select(.,directorio, secuencia_p, orden, mes, dpto, fex_c_2011)
names(data_deso_cabe_2019) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6920, INGLABO, ESC y P6050, no se encuentran en el dfm

data_ft_cabe_2019=readRDS('data/input/2019/Cabecera - Fuerza de trabajo.rds') %>% 
  dplyr::select(.,directorio, secuencia_p, orden, Mes, DPTO, Fex_c_2011)
names(data_ft_cabe_2019) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6920, INGLABO, ESC y P6050, no se encuentran en el dfm


data_carac_cabe_2019=readRDS('data/input/2019/Cabecera - Caracteristicas generales (Personas).rds') %>% 
  dplyr::select(.,directorio, secuencia_p, orden, mes, dpto, P6020, P6040, P6050, ESC,fex_c_2011)
names(data_carac_cabe_2019) #conocer los nombres de las variables, para el caso, P6030S1, P6440, P6450, P6920, INGLABO, no se encuentran en el dfm


data_ocu_res_2019=readRDS('data/input/2019/Resto - Ocupados.rds')
data_inac_res_2019=readRDS('data/input/2019/Resto - Inactivos.rds')
data_deso_res_2019=readRDS('data/input/2019/Resto - Desocupados.rds')
data_ft_res_2019=readRDS('data/input/2019/Resto - Fuerza de trabajo.rds')
data_carac_res_2019=readRDS('data/input/2019/Resto - Caracteristicas generales (Personas).rds')

#2020
data_ocu_cabe_2020=read.csv2('data/input/2020/Cabecera - Ocupados.csv')
data_inac_cabe_2020=read.csv2('data/input/2020/Cabecera - Inactivos.csv')
data_deso_cabe_2020=read.csv2('data/input/2020/Cabecera - Desocupados.csv')
data_ft_cabe_2020=read.csv2('data/input/2020/Cabecera - Fuerza de trabajo.csv')
data_carac_cabe_2020=read.csv2('data/input/2020/Cabecera - Caracteristicas generales (Personas).csv')

data_ocu_res_2020=read.csv2('data/input/2020/Resto - Ocupados.csv')
data_inac_res_2020=read.csv2('data/input/2020/Resto - Inactivos.csv')
data_deso_res_2020=read.csv2('data/input/2020/Resto - Desocupados.csv')
data_ft_res_2020=read.csv2('data/input/2020/Resto - Fuerza de trabajo.csv')
data_carac_res_2020=read.csv2('data/input/2020/Resto - Caracteristicas generales (Personas).csv')

#Filtrar de cada base de datos las variables: directorio, secuencia_p, orden, P6020, P6030S1,P6440, P6450, P6920, INGLABO, DPTO, fex_c_2011, ESC, MES y P6050







