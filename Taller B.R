#Taller B
#Elaborado por: Gabriela Cucunuba
#Colaborador:
#Fecha de elaboracion:
#Fecha ultima modificacion:

#1. Importar bases de datos

#2019
library(tidyverse)
data_ocu_cabe_2019=readRDS('data/input/2019/Cabecera - Ocupados.rds')
data_inac_cabe_2019=readRDS('data/input/2019/Cabecera - Inactivos.rds')
data_deso_cabe_2019=readRDS('data/input/2019/Cabecera - Desocupados.rds')
data_ft_cabe_2019=readRDS('data/input/2019/Cabecera - Fuerza de trabajo.rds')
data_carac_cabe_2019=readRDS('data/input/2019/Cabecera - Caracteristicas generales (Personas).rds')

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







