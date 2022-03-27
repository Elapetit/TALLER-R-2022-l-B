#Taller B
#Elaborado por: Gabriela Cucunuba
#Colaborador:
#Fecha de elaboracion:
#Fecha ultima modificacion:

#1.1. IMPORTAR BASES DE DATOS  

#1. Importar y filtrar de cada base de datos las variables: directorio, secuencia_p, orden, P6020, P6040, P6030S1, P6440, P6450, P6920, INGLABO, DPTO, fex_c_2011, ESC, MES y P6050
pacman::p_load(tidyverse,haven)

#2019
#Cabecera
data_ocu_cabe_2019=readRDS('data/input/2019/Cabecera - Ocupados.rds') %>% 
  dplyr::select(.,directorio, secuencia_p, orden, mes, dpto, P6920, fex_c_2011, P6800)
names(data_ocu_cabe_2019) #conocer los nombres de las variables, para el caso, P6020, P6030S1, P6440, P6450, P6050, P6040, INGLABO, ESC, no se encuentran en el dfm

data_inac_cabe_2019=readRDS('data/input/2019/Cabecera - Inactivos.rds') %>% 
  dplyr::select(.,directorio, secuencia_p, orden, mes, dpto, fex_c_2011, P7450)
names(data_inac_cabe_2019) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6050, P6920, INGLABO, ESC, no se encuentran en el dfm

data_deso_cabe_2019=readRDS('data/input/2019/Cabecera - Desocupados.rds') %>% 
  dplyr::select(.,directorio, secuencia_p, orden, mes, dpto, fex_c_2011, P7250)
names(data_deso_cabe_2019) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6920, INGLABO, ESC y P6050, no se encuentran en el dfm

data_ft_cabe_2019=readRDS('data/input/2019/Cabecera - Fuerza de trabajo.rds') %>% 
  dplyr::select(.,directorio, secuencia_p, orden, Mes, DPTO, Fex_c_2011, P6250)
names(data_ft_cabe_2019) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6920, INGLABO, ESC y P6050, no se encuentran en el dfm

data_carac_cabe_2019=readRDS('data/input/2019/Cabecera - Caracteristicas generales (Personas).rds') %>% 
  dplyr::select(.,directorio, secuencia_p, orden, mes, dpto, P6020, P6040, P6050, ESC,fex_c_2011)
names(data_carac_cabe_2019) #conocer los nombres de las variables, para el caso, P6030S1, P6440, P6450, P6920, INGLABO, no se encuentran en el dfm

#Resto
data_ocu_res_2019=readRDS('data/input/2019/Resto - Ocupados.rds') %>% 
  dplyr::select(.,DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, INGLABO, P6440, P6450, P6920, fex_c_2011, P388)
names(data_ocu_res_2019) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6050, ESC, no se encuentran en el dfm

data_inac_res_2019=readRDS('data/input/2019/Resto - Inactivos.rds') %>% 
  dplyr::select(.,DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, fex_c_2011, INI)
names(data_inac_res_2019) #conocer los nombres de las variables, para el caso, INGLABO, P6020, P6040, P6030S1, P6440, P6450, P6920, P6050, ESC, no se encuentran en el dfm

data_deso_res_2019=readRDS('data/input/2019/Resto - Desocupados.rds')  %>% 
  dplyr::select(.,DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, fex_c_2011, P7250)
names(data_deso_res_2019) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6920, P6050, INGLABO, ESC, no se encuentran en el dfm

data_ft_res_2019=readRDS('data/input/2019/Resto - Fuerza de trabajo.rds') %>% 
  dplyr::select(.,DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, fex_c_2011, P6250) 
names(data_ft_res_2019) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6920, P6050, INGLABO, ESC, no se encuentran en el dfm

data_carac_res_2019=readRDS('data/input/2019/Resto - Caracteristicas generales (Personas).rds') %>% 
  dplyr::select(.,DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, P6020, P6040, P6030S1, P6050, ESC, fex_c_2011) 
names(data_carac_res_2019) #conocer los nombres de las variables, para el caso, P6440, P6450, P6920, INGLABO, no se encuentran en el dfm

#2020
#Cabecera
data_ocu_cabe_2020=read.csv2('data/input/2020/Cabecera - Ocupados.csv') %>% 
  dplyr::select(.,ï..DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, P6440, P6450, P6920, INGLABO, fex_c_2011, P6800) 
names(data_ocu_cabe_2020) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6050, ESC, no se encuentran en el dfm

data_inac_cabe_2020=read.csv2('data/input/2020/Cabecera - Inactivos.csv') %>% 
  dplyr::select(.,ï..DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, fex_c_2011, P7450) 
names(data_inac_cabe_2020) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6920, P6050, INGLABO, ESC, no se encuentran en el dfm

data_deso_cabe_2020=read.csv2('data/input/2020/Cabecera - Desocupados.csv') %>% 
  dplyr::select(.,ï..DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, fex_c_2011, P7250) 
names(data_deso_cabe_2020) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6920, P6050, INGLABO, ESC, no se encuentran en el dfm

data_ft_cabe_2020=read.csv2('data/input/2020/Cabecera - Fuerza de trabajo.csv') %>% 
  dplyr::select(.,ï..DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, fex_c_2011, P6250) 
names(data_ft_cabe_2020) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6920, P6050, INGLABO, ESC, no se encuentran en el dfm

data_carac_cabe_2020=read.csv2('data/input/2020/Cabecera - Caracteristicas generales (Personas).csv') %>% 
  dplyr::select(.,ï..DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, P6020, P6040, P6030S1, P6050, ESC, fex_c_2011) 
names(data_carac_cabe_2020) #conocer los nombres de las variables, para el caso, P6440, P6450, P6920, INGLABO, no se encuentran en el dfm 

#Resto
data_ocu_res_2020=read.csv2('data/input/2020/Resto - Ocupados.csv')  %>% 
  dplyr::select(.,ï..DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, P6440, P6450, P6920, INGLABO, fex_c_2011, P388) 
names(data_ocu_res_2020) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6050, ESC, no se encuentran en el dfm

data_inac_res_2020=read.csv2('data/input/2020/Resto - Inactivos.csv') %>% 
  dplyr::select(.,ï..DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, fex_c_2011, INI) 
names(data_inac_res_2020) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6920, P6050, INGLABO, ESC, no se encuentran en el dfm

data_deso_res_2020=read.csv2('data/input/2020/Resto - Desocupados.csv') %>% 
  dplyr::select(.,ï..DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, fex_c_2011, P7250) 
names(data_deso_res_2020) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6920, P6050, INGLABO, ESC, no se encuentran en el dfm

data_ft_res_2020=read.csv2('data/input/2020/Resto - Fuerza de trabajo.csv') %>% 
  dplyr::select(.,ï..DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, fex_c_2011, P6250) 
names(data_deso_res_2020) #conocer los nombres de las variables, para el caso, P6020, P6040, P6030S1, P6440, P6450, P6920, P6050, INGLABO, ESC, no se encuentran en el dfm

data_carac_res_2020=read.csv2('data/input/2020/Resto - Caracteristicas generales (Personas).csv') %>% 
  dplyr::select(.,ï..DIRECTORIO, SECUENCIA_P, ORDEN, MES, DPTO, P6020, P6040, P6030S1, P6050, ESC, fex_c_2011) 
names(data_carac_res_2020) #conocer los nombres de las variables, para el caso, P6440, P6450, P6920, INGLABO, no se encuentran en el dfm

#Se añaden las variables P6800, P7450, P7250, P6250, P388, INI con el fin de realizar las variables categoricas

#2. Elaboracion de variables categoricas para ocupados, inactivos, desocupados y fuerza de trabajo

#2019
#Cabecera
data_ocu_cabe_2019=mutate(data_ocu_cabe_2019,vc_ocu_cabe_2019=ifelse(test=P6800,yes=1,no=0)) 
#Generamos una variable categorica del dfm que se llamara vc_ocu_cabe_2019 que dependera del siguiente condicional: si la pregunta P6800 aparece, indicar si (1), en contraste, indicar no (0)
#A partir de la pregunta P6800 que menciona la cantidad de horas trabajadas, creamos una variable categorica que señala si la pregunta P6800 aparece, el individuo se encuentra en la poblacion de ocupados de las cabeceras municipales

data_inac_cabe_2019=mutate(data_inac_cabe_2019,vc_inac_cabe_2019=ifelse(test=P6800,yes=1,no=0))
#Dado que la pregunta P6800 no se encuentra en esta base de datos, intuimos que la poblacion encuestada no se encuentra en la poblacion de ocupados
data_inac_cabe_2019=mutate(data_inac_cabe_2019,vc_inac_cabe_2019=ifelse(test=P7450,yes=1,no=0))
#Generamos una varible del dfm que se llamara vc_inac_cabe_2019 la cual dependera del condicional: si la pregunta P7450 aparece, indicar si (1), si no es asi indicar no (0) 
#La pregunta P7450 en el dfm relata la renuncia del trabajo, por lo tanto la poblacion encuestada pertenecera a la poblacion inactiva de las cabeceras municipales si y solo si posee este interrogante. En adicion, resultan ser inactivas porque no estan en busqueda de empleo.

data_deso_cabe_2019=mutate(data_deso_cabe_2019,vc_deso_cabe_2019=ifelse(test=P7250,yes=1,no=0))
#Creamos una variable del dfm llamada vc_deso_cabe_2019 que estara en funcion del siguiente condicional: si la pregunta P7250 se encuentra en el dfm colocar si (1), en caso opuesto, colocar no (0)
#Esta pregunta P7250 en la base de datos indaga sobre la ultima vez que se busco un empleo, por lo tanto, el interrogante cita a las personas desocupadas, es decir, las que estan desempleadas y buscan un empleo de las cabeceras municipales

data_ft_cabe_2019=mutate(data_ft_cabe_2019,vc_ft_cabe_2019=ifelse(test=P6250,yes=1,no=0))
#Generamos una variable de la base de datos denominada vc_ft_cabe_2019 que contara con el siguiente condicional: si la pregunta P6250 es encontrada en el dfm indica si (1), en caso contrario indica no (0)
#Tomando como base la pregunta P6250 que describe la realizacion de alguna actividad remunerada por horas describe las actividades realizadas por la fuerza de trabajo, en este caso, de las cabeceras municipales, comprendida como la cantidad de personas que estan en capacidad de trabajar

#Resto
data_ocu_res_2019=mutate(data_ocu_res_2019,vc_ocu_res_2019=ifelse(test=P388,yes=1,no=0))
#Generamos una variable del dfm denominado vc_ocu_res_2019 regida por el condicional: si el interrogante P388 aparece indicar si (1), en caso opuesto, no (0)
#Con base a la P388 la cual denota la realizacion de trabajo, categoriza a las personas de esta base de datos en la poblacion de ocupados en las zonas rurales del pais

data_inac_res_2019=mutate(data_inac_res_2019,vc_inac_res_2019=ifelse(test=INI,yes=1,no=0))
#Creamos una variable categorica denominada vc_inac_res_2019 en funcion del condicional: si se encuentra la columna INI indicar si (1), si no es asi, indicar no (0)
#En este caso la variable INI que hace referencia a los inactivos, categoriza las personas de este grupo en el conjunto de inactivos de las para las zonas rurales

data_deso_res_2019=mutate(data_deso_res_2019,vc_deso_res_2019=ifelse(test=P7250,yes=1,no=0))
#Creamos la variable categorica llamada vc_deso_res_2019 con el condicional: si se encuentra la P7250 indica si (1), en caso opuesto, indicar no (0)
#Teniendo en cuenta la P7250 que investiga el tiempo de busqueda de trabajo, se agrupan a estos agentes en la poblacion de desocupados para las zonas rurales

data_ft_res_2019=mutate(data_ft_res_2019,vc_ft_res_2019=ifelse(test=P6250,yes=1,no=0))
#Generamos una variable de la base de datos denominada vc_ft_res_2019 que contara con el siguiente condicional: si la pregunta P6250 es encontrada en el dfm indica si (1), en caso contrario indica no (0)
#Tomando como base la pregunta P6250 que describe la realizacion de alguna actividad remunerada por horas describe las actividades realizadas por la fuerza de trabajo para el caso de las zonas rurales

#2020
#Cabecera
data_ocu_cabe_2020=mutate(data_ocu_cabe_2020,vc_ocu_cabe_2020=ifelse(test=P6800,yes=1,no=0)) 
#Generamos una variable categorica del dfm que se llame vc_ocu_cabe_2020 que dependera del siguiente condicional: si la pregunta P6800 aparece, indicar si (1), en contraste, indicar no (0)
#A partir de la pregunta P6800 que menciona la cantidad de horas trabajadas, creamos una variable categorica que manifiesta la estadia del individuo en la poblacion de ocupados para las cabeceras municipales

data_inac_cabe_2020=mutate(data_inac_cabe_2020,vc_inac_cabe_2020=ifelse(test=P7450,yes=1,no=0))
#Generamos una varible del dfm que se llame vc_inac_cabe_2020 la cual dependera del condicional: si la pregunta P7450 aparece, indicar si (1), si no es asi indicar no (0) 
#La pregunta P7450 en el dfm relata la renuncia del trabajo, por lo tanto la poblacion encuestada pertenecera a la poblacion inactiva para las cabeceras municipales si y solo si posee este interrogante 

data_deso_cabe_2020=mutate(data_deso_cabe_2020,vc_deso_cabe_2020=ifelse(test=P7250,yes=1,no=0))
#Creamos una variable del dfm llamada vc_deso_cabe_2020 que estara en funcion del siguiente condicional: si la pregunta P7250 se encuentra en el dfm colocar si (1), en caso opuesto, colocar no (0)
#Esta pregunta P7250 en la base de datos indaga sobre la ultima vez que se busco un empleo, por lo tanto, el interrogante cita a las personas desocupadas, es decir, las que estan desempleadas y buscan un empleos para el caso de las cabeceras municipales

data_ft_cabe_2020=mutate(data_ft_cabe_2020,vc_ft_cabe_2020=ifelse(test=P6250,yes=1,no=0))
#Generamos una variable de la base de datos denominada vc_ft_cabe_2020 que contara con el siguiente condicional: si la pregunta P6250 es encontrada en el dfm indica si (1), en caso contrario, indica no (0)
#Tomando como base la pregunta P6250 que expone la realizacion de alguna actividad remunerada por horas, describe las actividades realizadas por la fuerza de trabajo de las cabeceras municipales

#Resto
data_ocu_res_2020=mutate(data_ocu_res_2020,vc_ocu_res_2020=ifelse(test=P388,yes=1,no=0))
#Generamos una variable del dfm denominado vc_ocu_res_2020 regida por el condicional: si el interrogante P388 aparece indicar si (1), en caso opuesto, no (0)
#Con base a la P388 la cual denota la realizacion de trabajo, categoriza a las personas de esta base de datos en la poblacion de ocupados en las zonas rurales del pais

data_inac_res_2020=mutate(data_inac_res_2020,vc_inac_res_2020=ifelse(test=INI,yes=1,no=0))
#Creamos una variable categorica denominada vc_inac_res_2020 en funcion del condicional: si se encuentra la columna INI indicar si (1), si no es asi, indicar no (0)
#En este caso tambien se toma la variable INI, la cual hace referencia a los inactivos, categoriza las personas de este grupo en el conjunto de inactivos para las zonas rurales

data_deso_res_2020=mutate(data_deso_res_2020,vc_deso_res_2020=ifelse(test=P7250,yes=1,no=0))
#Creamos la variable categorica llamada vc_deso_res_2020 con el condicional: si se encuentra la P7250 indica si (1), en caso opuesto, indicar no (0)
#Teniendo en cuenta la P7250 que investiga el tiempo de busqueda de trabajo, se agrupan a estos agentes en la poblacion de desocupados para el caso de las zonas rurales

data_ft_res_2020=mutate(data_ft_res_2020,vc_ft_res_2020=ifelse(test=P6250,yes=1,no=0))
#Generamos una variable de la base de datos denominada vc_ft_res_2020 que contara con el siguiente condicional: si la pregunta P6250 es encontrada en el dfm indica si (1), en caso contrario indica no (0)
#Tomando como base la pregunta P6250 que anota la realizacion de alguna actividad remunerada por horas, describe las actividades realizadas por la fuerza de trabajo para el caso de las zonas rurales

#3. Listas

#2019
lista_1=list()
lista_1[[1]]=data_ocu_cabe_2019
lista_1[[2]]=data_inac_cabe_2019
lista_1[[3]]=data_deso_cabe_2019
lista_1[[4]]=data_ft_cabe_2019
lista_1[[5]]=data_carac_cabe_2019
lista_1[[6]]=data_ocu_res_2019
lista_1[[7]]=data_inac_res_2019
lista_1[[8]]=data_deso_res_2019
lista_1[[9]]=data_ft_res_2019
lista_1[[10]]=data_carac_res_2019

#2020
lista_2=list()
lista_2[[1]]=data_ocu_cabe_2020
lista_2[[2]]=data_inac_cabe_2020
lista_2[[3]]=data_deso_cabe_2020
lista_2[[4]]=data_ft_cabe_2020
lista_2[[5]]=data_carac_cabe_2020
lista_2[[6]]=data_ocu_res_2020
lista_2[[7]]=data_inac_res_2020
lista_2[[8]]=data_deso_res_2020
lista_2[[9]]=data_ft_res_2020
lista_2[[10]]=data_carac_res_2020

#1.2. UNIR DATOS

#2019
#Cabecera
#ocupados,inactivos
data_ocu_inac_c_2019=full_join(x=data_ocu_cabe_2019,y=data_inac_cabe_2019, by=c('directorio','secuencia_p','orden','mes','dpto','fex_c_2011'))
duplicated(data_ocu_inac_c_2019[,c('directorio','secuencia_p','orden','mes','dpto','fex_c_2011')]) %>% table()

#ocu-inac,desocupados
data_ocu_inac_deso_c_2019=full_join(x=data_ocu_inac_c_2019,y=data_deso_cabe_2019,by=c('directorio','secuencia_p','orden','mes','dpto','fex_c_2011'))

#ocu-inac-deso,fuerza de trabajo
data_ocu_inac_deso_ft_c_2019=full_join(x=data_ocu_inac_deso_c_2019,y=data_ft_cabe_2019,by=c('directorio','secuencia_p','orden','mes'='Mes','dpto'='DPTO','fex_c_2011'='Fex_c_2011'))

#ocu-inac-deso-ft,caracteristicas generales
data_ocu_inac_deso_ft_carac_c_2019=full_join(x=data_ocu_inac_deso_ft_c_2019,y=data_carac_cabe_2019,by=c('directorio','secuencia_p','orden','mes','dpto','fex_c_2011'))

#Cuenta con 59,230 entries asi como caracteristicas generales, el dfm mas grande

#Renombramos
data_cabe_2019=data_ocu_inac_deso_ft_carac_c_2019

#Variable observaciones de cada año
data_cabe_2019=mutate(data_cabe_2019,año=2019)

#2020
#Cabecera
#ocupados,inactivos
data_ocu_inac_c_2020=full_join(x=data_ocu_cabe_2020,y=data_inac_cabe_2020, by=c('ï..DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011'))
duplicated(data_ocu_inac_c_2020[,c('ï..DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011')]) %>% table()

#ocu-inac,desocupados
data_ocu_inac_deso_c_2020=full_join(x=data_ocu_inac_c_2020,y=data_deso_cabe_2020,by=c('ï..DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011'))

#ocu-inac-deso,fuerza de trabajo
data_ocu_inac_deso_ft_c_2020=full_join(x=data_ocu_inac_deso_c_2020,y=data_ft_cabe_2020,by=c('ï..DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011'))

#ocu-inac-deso-ft,caracteristicas generales
data_ocu_inac_deso_ft_carac_c_2020=full_join(x=data_ocu_inac_deso_ft_c_2020,y=data_carac_cabe_2020,by=c('ï..DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011'))

#Posee 57,215 entries del mismo modo que caracteristicas generales, siendo el dfm mas robusto

#Renombramos
data_cabe_2020=data_ocu_inac_deso_ft_carac_c_2020

#Variable observaciones de cada año
data_cabe_2020=mutate(data_cabe_2020,AÑO=2020)

#Modulo que contiene cabecera de ambos años:
cabecera=plyr::rbind.fill(data_cabe_2019,data_cabe_2020)

#2019
#Resto
#ocupados,inactivos
data_ocu_inac_r_2019=full_join(x=data_ocu_res_2019,y=data_inac_res_2019, by=c('DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011'))
duplicated(data_ocu_inac_r_2019[,c('DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011')]) %>% table()

#ocu-inac,desocupados
data_ocu_inac_deso_r_2019=full_join(x=data_ocu_inac_r_2019,y=data_deso_res_2019,by=c('DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011'))

#ocu-inac-deso,fuerza de trabajo
data_ocu_inac_deso_ft_r_2019=full_join(x=data_ocu_inac_deso_r_2019,y=data_ft_res_2019,by=c('DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011'))

#ocu-inac-deso-ft,caracteristicas generales
data_ocu_inac_deso_ft_carac_r_2019=full_join(x=data_ocu_inac_deso_ft_r_2019,y=data_carac_res_2019,by=c('DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011'))

#Contiene 5,905 entries como caracteristicas generales, que es el dfm mas vasto

#Renombramos
data_res_2019=data_ocu_inac_deso_ft_carac_r_2019

#Variable observaciones de cada año
data_res_2019=mutate(data_res_2019,Año=2019)

#2020
#Resto
#ocupados,inactivos
data_ocu_inac_r_2020=full_join(x=data_ocu_res_2020,y=data_inac_res_2020, by=c('ï..DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011'))
duplicated(data_ocu_inac_r_2020[,c('ï..DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011')]) %>% table()

#ocu-inac,desocupados
data_ocu_inac_deso_r_2020=full_join(x=data_ocu_inac_r_2020,y=data_deso_res_2020,by=c('ï..DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011'))

#ocu-inac-deso,fuerza de trabajo
data_ocu_inac_deso_ft_r_2020=full_join(x=data_ocu_inac_deso_r_2020,y=data_ft_res_2020,by=c('ï..DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011'))

#ocu-inac-deso-ft,caracteristicas generales
data_ocu_inac_deso_ft_carac_r_2020=full_join(x=data_ocu_inac_deso_ft_r_2020,y=data_carac_res_2020,by=c('ï..DIRECTORIO','SECUENCIA_P','ORDEN','MES','DPTO','fex_c_2011'))

#Tiene 6,038 entries de la misma manera que caracteristicas generales recordando que es el dfm mas elevado en materia de observaciones

#Renombramos
data_res_2020=data_ocu_inac_deso_ft_carac_r_2020

#Variable observaciones de cada año
data_res_2020=mutate(data_res_2020,Añoo=2020)

#Modulo que contiene resto de ambos años:
resto=plyr::rbind.fill(data_res_2019,data_res_2020)

#1.3. UNA BASE NACIONAL

#Variable 
cabecera=mutate(cabecera,obs_urb='cabecera')
resto=mutate(resto,obs_rur='resto')

nacional=plyr::rbind.fill(cabecera,resto)





