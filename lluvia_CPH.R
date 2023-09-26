library(raster)
library(maptools)


#Carga el shapefile con las zonas de pronostico
shp<-shapefile("/home/arw/zonas/zonas_pronostico_lluvia1.shp")

#Define el directorio de trabajo
setwd("/home/arw/temporal/")

#------------------------------------------------------------------------------------------------------------->
#Defino funcion para realizar descarga de modelos segun ciclo y periodo acumulado de 24 horas
descarga <- function(ciclo,periodo) {
  for (i in c("A","C","D","E","F")) {
    ruta <- paste("http://srt.marn.gob.sv/wrf_2019_",i,"/dominio3/",ciclo,"/geotiff/lluvia_",periodo,"h.tif", sep = "") 
    download.file(ruta, destfile = paste(i,"_",periodo,"h.tif",sep = ""))
  }
}
#------------------------------------------------------------------------------------------------------------->


#------------------------------------------------------------------------------------------------------------->
#Defino funcion para realizar descarga de modelos segun ciclo y periodo acumulado de 24 horas
descarga_periodos <- function(ciclo) {
  for (i in c("A","C","D","E","F")) {
    ruta <- paste("http://srt.marn.gob.sv/wrf_2019_",i,"/dominio3/",ciclo,"/geotiff/lluvia_.tif", sep = "") 
    download.file(ruta, destfile = paste(i,"_",periodo,"h.tif",sep = ""))
  }
}
#------------------------------------------------------------------------------------------------------------->  
  
#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de 24H
descarga("00","24")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Genera una pila con los rasters de acumulados
pila_24h<-brick(raster("A_24h.tif"),raster("C_24h.tif"),raster("D_24h.tif"),
                raster("E_24h.tif"),raster("F_24h.tif"))
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Borra los archivos individuales
file.remove("/home/arw/temporal/A_24h.tif")
file.remove("/home/arw/temporal/C_24h.tif")
file.remove("/home/arw/temporal/D_24h.tif")
file.remove("/home/arw/temporal/E_24h.tif")
file.remove("/home/arw/temporal/F_24h.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de 48H
descarga("00","48")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Genera una pila con los rasters de acumulados
pila_48h<-brick(raster("A_48h.tif"),raster("C_48h.tif"),
                raster("D_48h.tif"),raster("E_48h.tif"),raster("F_48h.tif"))
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Borra los archivos individuales
file.remove("/home/arw/temporal/A_48h.tif")
file.remove("/home/arw/temporal/C_48h.tif")
file.remove("/home/arw/temporal/D_48h.tif")
file.remove("/home/arw/temporal/E_48h.tif")
file.remove("/home/arw/temporal/F_48h.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de 72h
descarga("00","72")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Genera una pila con los rasters de acumulados
pila_72h<-brick(raster("A_72h.tif"),raster("C_72h.tif"),
                raster("D_72h.tif"),raster("E_72h.tif"),raster("F_72h.tif"))
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Borra los archivos individuales
file.remove("/home/arw/temporal/A_72h.tif")
file.remove("/home/arw/temporal/C_72h.tif")
file.remove("/home/arw/temporal/D_72h.tif")
file.remove("/home/arw/temporal/E_72h.tif")
file.remove("/home/arw/temporal/F_72h.tif")
#------------------------------------------------------------------------------------------------------------->



#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de manana d0
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_13.tif", destfile = "13_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_14.tif", destfile = "14_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_15.tif", destfile = "15_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_16.tif", destfile = "16_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_17.tif", destfile = "17_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_18.tif", destfile = "18_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_19.tif", destfile = "19_A.tif")

manana_d0_A<-raster("13_A.tif")+raster("14_A.tif")+raster("15_A.tif")+raster("16_A.tif")+raster("17_A.tif")
            +raster("18_A.tif")+raster("19_A.tif")

#Borra los archivos individuales
file.remove("13_A.tif")
file.remove("14_A.tif")
file.remove("15_A.tif")
file.remove("16_A.tif")
file.remove("17_A.tif")
file.remove("18_A.tif")
file.remove("19_A.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de manana d0
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_13.tif", destfile = "13_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_14.tif", destfile = "14_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_15.tif", destfile = "15_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_16.tif", destfile = "16_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_17.tif", destfile = "17_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_18.tif", destfile = "18_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_19.tif", destfile = "19_B.tif")

manana_d0_B<-raster("13_B.tif")+raster("14_B.tif")+raster("15_B.tif")+raster("16_B.tif")+raster("17_B.tif")
+raster("18_B.tif")+raster("19_B.tif")

#Borra los archivos individuales
file.remove("13_B.tif")
file.remove("14_B.tif")
file.remove("15_B.tif")
file.remove("16_B.tif")
file.remove("17_B.tif")
file.remove("18_B.tif")
file.remove("19_B.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de manana d0
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_13.tif", destfile = "13_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_14.tif", destfile = "14_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_15.tif", destfile = "15_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_16.tif", destfile = "16_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_17.tif", destfile = "17_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_18.tif", destfile = "18_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_19.tif", destfile = "19_C.tif")

manana_d0_C<-raster("13_C.tif")+raster("14_C.tif")+raster("15_C.tif")+raster("16_C.tif")+raster("17_C.tif")
+raster("18_C.tif")+raster("19_C.tif")

#Borra los archivos individuales
file.remove("13_C.tif")
file.remove("14_C.tif")
file.remove("15_C.tif")
file.remove("16_C.tif")
file.remove("17_C.tif")
file.remove("18_C.tif")
file.remove("19_C.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de manana d0
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_13.tif", destfile = "13_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_14.tif", destfile = "14_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_15.tif", destfile = "15_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_16.tif", destfile = "16_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_17.tif", destfile = "17_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_18.tif", destfile = "18_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_19.tif", destfile = "19_D.tif")

manana_d0_D<-raster("13_D.tif")+raster("14_D.tif")+raster("15_D.tif")+raster("16_D.tif")+raster("17_D.tif")
+raster("18_D.tif")+raster("19_D.tif")

#Borra los archivos individuales
file.remove("13_D.tif")
file.remove("14_D.tif")
file.remove("15_D.tif")
file.remove("16_D.tif")
file.remove("17_D.tif")
file.remove("18_D.tif")
file.remove("19_D.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de manana d0
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_13.tif", destfile = "13_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_14.tif", destfile = "14_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_15.tif", destfile = "15_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_16.tif", destfile = "16_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_17.tif", destfile = "17_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_18.tif", destfile = "18_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_19.tif", destfile = "19_E.tif")

manana_d0_E<-raster("13_E.tif")+raster("14_E.tif")+raster("15_E.tif")+raster("16_E.tif")+raster("17_E.tif")
+raster("18_E.tif")+raster("19_E.tif")

#Borra los archivos individuales
file.remove("13_E.tif")
file.remove("14_E.tif")
file.remove("15_E.tif")
file.remove("16_E.tif")
file.remove("17_E.tif")
file.remove("18_E.tif")
file.remove("19_E.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de manana d0
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_13.tif", destfile = "13_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_14.tif", destfile = "14_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_15.tif", destfile = "15_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_16.tif", destfile = "16_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_17.tif", destfile = "17_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_18.tif", destfile = "18_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_19.tif", destfile = "19_F.tif")

manana_d0_F<-raster("13_F.tif")+raster("14_F.tif")+raster("15_F.tif")+raster("16_F.tif")+raster("17_F.tif")
+raster("18_F.tif")+raster("19_F.tif")

#Borra los archivos individuales
file.remove("13_F.tif")
file.remove("14_F.tif")
file.remove("15_F.tif")
file.remove("16_F.tif")
file.remove("17_F.tif")
file.remove("18_F.tif")
file.remove("19_F.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de tarde d0
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_20.tif", destfile = "20_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_21.tif", destfile = "21_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_22.tif", destfile = "22_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_23.tif", destfile = "23_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_24.tif", destfile = "24_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_25.tif", destfile = "25_A.tif")

tarde_d0_A<-raster("20_A.tif")+raster("21_A.tif")+raster("22_A.tif")+raster("23_A.tif")+raster("24_A.tif")
+raster("25_A.tif")

#Borra los archivos individuales
file.remove("20_A.tif")
file.remove("21_A.tif")
file.remove("22_A.tif")
file.remove("23_A.tif")
file.remove("24_A.tif")
file.remove("25_A.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de tarde d0
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_20.tif", destfile = "20_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_21.tif", destfile = "21_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_22.tif", destfile = "22_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_23.tif", destfile = "23_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_24.tif", destfile = "24_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_25.tif", destfile = "25_B.tif")

tarde_d0_B<-raster("20_B.tif")+raster("21_B.tif")+raster("22_B.tif")+raster("23_B.tif")+raster("24_B.tif")
+raster("25_B.tif")

#Borra los archivos individuales
file.remove("20_B.tif")
file.remove("21_B.tif")
file.remove("22_B.tif")
file.remove("23_B.tif")
file.remove("24_B.tif")
file.remove("25_B.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de tarde d0
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_20.tif", destfile = "20_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_21.tif", destfile = "21_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_22.tif", destfile = "22_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_23.tif", destfile = "23_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_24.tif", destfile = "24_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_25.tif", destfile = "25_C.tif")

tarde_d0_C<-raster("20_C.tif")+raster("21_C.tif")+raster("22_C.tif")+raster("23_C.tif")+raster("24_C.tif")
+raster("25_C.tif")

#Borra los archivos individuales
file.remove("20_C.tif")
file.remove("21_C.tif")
file.remove("22_C.tif")
file.remove("23_C.tif")
file.remove("24_C.tif")
file.remove("25_C.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de tarde d0
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_20.tif", destfile = "20_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_21.tif", destfile = "21_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_22.tif", destfile = "22_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_23.tif", destfile = "23_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_24.tif", destfile = "24_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_25.tif", destfile = "25_D.tif")

tarde_d0_D<-raster("20_D.tif")+raster("21_D.tif")+raster("22_D.tif")+raster("23_D.tif")+raster("24_D.tif")
+raster("25_D.tif")

#Borra los archivos individuales
file.remove("20_D.tif")
file.remove("21_D.tif")
file.remove("22_D.tif")
file.remove("23_D.tif")
file.remove("24_D.tif")
file.remove("25_D.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de tarde d0
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_20.tif", destfile = "20_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_21.tif", destfile = "21_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_22.tif", destfile = "22_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_23.tif", destfile = "23_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_24.tif", destfile = "24_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_25.tif", destfile = "25_E.tif")

tarde_d0_E<-raster("20_E.tif")+raster("21_E.tif")+raster("22_E.tif")+raster("23_E.tif")+raster("24_E.tif")
+raster("25_E.tif")

#Borra los archivos individuales
file.remove("20_E.tif")
file.remove("21_E.tif")
file.remove("22_E.tif")
file.remove("23_E.tif")
file.remove("24_E.tif")
file.remove("25_E.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de tarde d0
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_20.tif", destfile = "20_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_21.tif", destfile = "21_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_22.tif", destfile = "22_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_23.tif", destfile = "23_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_24.tif", destfile = "24_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_25.tif", destfile = "25_F.tif")

tarde_d0_F<-raster("20_F.tif")+raster("21_F.tif")+raster("22_F.tif")+raster("23_F.tif")+raster("24_F.tif")
+raster("25_F.tif")

#Borra los archivos individuales
file.remove("20_F.tif")
file.remove("21_F.tif")
file.remove("22_F.tif")
file.remove("23_F.tif")
file.remove("24_F.tif")
file.remove("25_F.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#------------------------------------------------------------------------------------------------------------->


#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de noche d0
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_26.tif", destfile = "26_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_27.tif", destfile = "27_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_28.tif", destfile = "28_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_29.tif", destfile = "29_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_30.tif", destfile = "30_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_31.tif", destfile = "31_A.tif")

noche_d0_A<-raster("26_A.tif")+raster("27_A.tif")+raster("28_A.tif")+raster("29_A.tif")+raster("30_A.tif")
+raster("31_A.tif")

#Borra los archivos individuales
file.remove("26_A.tif")
file.remove("27_A.tif")
file.remove("28_A.tif")
file.remove("29_A.tif")
file.remove("30_A.tif")
file.remove("31_A.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de noche d0
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_26.tif", destfile = "26_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_27.tif", destfile = "27_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_28.tif", destfile = "28_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_29.tif", destfile = "29_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_30.tif", destfile = "30_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_31.tif", destfile = "31_B.tif")

noche_d0_B<-raster("26_B.tif")+raster("27_B.tif")+raster("28_B.tif")+raster("29_B.tif")+raster("30_B.tif")
+raster("31_B.tif")

#Borra los archivos individuales
file.remove("26_B.tif")
file.remove("27_B.tif")
file.remove("28_B.tif")
file.remove("29_B.tif")
file.remove("30_B.tif")
file.remove("31_B.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de noche d0
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_26.tif", destfile = "26_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_27.tif", destfile = "27_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_28.tif", destfile = "28_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_29.tif", destfile = "29_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_30.tif", destfile = "30_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_31.tif", destfile = "31_C.tif")

noche_d0_C<-raster("26_C.tif")+raster("27_C.tif")+raster("28_C.tif")+raster("29_C.tif")+raster("30_C.tif")
+raster("31_C.tif")

#Borra los archivos individuales
file.remove("26_C.tif")
file.remove("27_C.tif")
file.remove("28_C.tif")
file.remove("29_C.tif")
file.remove("30_C.tif")
file.remove("31_C.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de noche d0
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_26.tif", destfile = "26_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_27.tif", destfile = "27_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_28.tif", destfile = "28_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_29.tif", destfile = "29_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_30.tif", destfile = "30_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_31.tif", destfile = "31_D.tif")

noche_d0_D<-raster("26_D.tif")+raster("27_D.tif")+raster("28_D.tif")+raster("29_D.tif")+raster("30_D.tif")
+raster("31_D.tif")

#Borra los archivos individuales
file.remove("26_D.tif")
file.remove("27_D.tif")
file.remove("28_D.tif")
file.remove("29_D.tif")
file.remove("30_D.tif")
file.remove("31_D.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de noche d0
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_26.tif", destfile = "26_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_27.tif", destfile = "27_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_28.tif", destfile = "28_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_29.tif", destfile = "29_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_30.tif", destfile = "30_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_31.tif", destfile = "31_E.tif")

noche_d0_E<-raster("26_E.tif")+raster("27_E.tif")+raster("28_E.tif")+raster("29_E.tif")+raster("30_E.tif")
+raster("31_E.tif")

#Borra los archivos individuales
file.remove("26_E.tif")
file.remove("27_E.tif")
file.remove("28_E.tif")
file.remove("29_E.tif")
file.remove("30_E.tif")
file.remove("31_E.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de noche d0
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_26.tif", destfile = "26_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_27.tif", destfile = "27_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_28.tif", destfile = "28_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_29.tif", destfile = "29_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_30.tif", destfile = "30_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_31.tif", destfile = "31_F.tif")

noche_d0_F<-raster("26_F.tif")+raster("27_F.tif")+raster("28_F.tif")+raster("29_F.tif")+raster("30_F.tif")
+raster("31_F.tif")

#Borra los archivos individuales
file.remove("26_F.tif")
file.remove("27_F.tif")
file.remove("28_F.tif")
file.remove("29_F.tif")
file.remove("30_F.tif")
file.remove("31_F.tif")
#------------------------------------------------------------------------------------------------------------->


#------------------------------------------------------------------------------------------------------------->
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de madrugada d1
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_32.tif", destfile = "32_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_33.tif", destfile = "33_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_34.tif", destfile = "34_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_35.tif", destfile = "35_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_36.tif", destfile = "36_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/00/geotiff/lluvia_37.tif", destfile = "37_A.tif")

madrugada_d1_A<-raster("32_A.tif")+raster("33_A.tif")+raster("34_A.tif")+raster("35_A.tif")+raster("36_A.tif")
+raster("37_A.tif")

#Borra los archivos individuales
file.remove("32_A.tif")
file.remove("33_A.tif")
file.remove("34_A.tif")
file.remove("35_A.tif")
file.remove("36_A.tif")
file.remove("37_A.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de madrugada d1
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_32.tif", destfile = "32_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_33.tif", destfile = "33_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_34.tif", destfile = "34_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_35.tif", destfile = "35_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_36.tif", destfile = "36_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/00/geotiff/lluvia_37.tif", destfile = "37_B.tif")

madrugada_d1_B<-raster("32_B.tif")+raster("33_B.tif")+raster("34_B.tif")+raster("35_B.tif")+raster("36_B.tif")
+raster("37_B.tif")

#Borra los archivos individuales
file.remove("32_B.tif")
file.remove("33_B.tif")
file.remove("34_B.tif")
file.remove("35_B.tif")
file.remove("36_B.tif")
file.remove("37_B.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de madrugada d1
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_32.tif", destfile = "32_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_33.tif", destfile = "33_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_34.tif", destfile = "34_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_35.tif", destfile = "35_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_36.tif", destfile = "36_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/00/geotiff/lluvia_37.tif", destfile = "37_C.tif")

madrugada_d1_C<-raster("32_C.tif")+raster("33_C.tif")+raster("34_C.tif")+raster("35_C.tif")+raster("36_C.tif")
+raster("37_C.tif")

#Borra los archivos individuales
file.remove("32_C.tif")
file.remove("33_C.tif")
file.remove("34_C.tif")
file.remove("35_C.tif")
file.remove("36_C.tif")
file.remove("37_C.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de madrugada d1
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_32.tif", destfile = "32_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_33.tif", destfile = "33_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_34.tif", destfile = "34_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_35.tif", destfile = "35_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_36.tif", destfile = "36_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/00/geotiff/lluvia_37.tif", destfile = "37_D.tif")

madrugada_d1_D<-raster("32_D.tif")+raster("33_D.tif")+raster("34_D.tif")+raster("35_D.tif")+raster("36_D.tif")
+raster("37_D.tif")

#Borra los archivos individuales
file.remove("32_D.tif")
file.remove("33_D.tif")
file.remove("34_D.tif")
file.remove("35_D.tif")
file.remove("36_D.tif")
file.remove("37_D.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de madrugada d1
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_32.tif", destfile = "32_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_33.tif", destfile = "33_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_34.tif", destfile = "34_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_35.tif", destfile = "35_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_36.tif", destfile = "36_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/00/geotiff/lluvia_37.tif", destfile = "37_E.tif")

madrugada_d1_E<-raster("32_E.tif")+raster("33_E.tif")+raster("34_E.tif")+raster("35_E.tif")+raster("36_E.tif")
+raster("37_E.tif")

#Borra los archivos individuales
file.remove("32_E.tif")
file.remove("33_E.tif")
file.remove("34_E.tif")
file.remove("35_E.tif")
file.remove("36_E.tif")
file.remove("37_E.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de madrugada d1
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_32.tif", destfile = "32_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_33.tif", destfile = "33_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_34.tif", destfile = "34_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_35.tif", destfile = "35_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_36.tif", destfile = "36_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/00/geotiff/lluvia_37.tif", destfile = "37_F.tif")

madrugada_d1_F<-raster("32_F.tif")+raster("33_F.tif")+raster("34_F.tif")+raster("35_F.tif")+raster("36_F.tif")
+raster("37_F.tif")

#Borra los archivos individuales
file.remove("32_F.tif")
file.remove("33_F.tif")
file.remove("34_F.tif")
file.remove("35_F.tif")
file.remove("36_F.tif")
file.remove("37_F.tif")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
extentsion_d03<-c(269.5991045454544519-360,272.6782775471975242-360,12.6275776326057141,14.9644500000000011)
extent(pila_24h)<-extentsion_d03
extent(pila_48h)<-extentsion_d03
extent(pila_72h)<-extentsion_d03

#------------------------------------------------------------------------------------------------------------->
extent(manana_d0_A)<-extentsion_d03
extent(manana_d0_B)<-extentsion_d03
extent(manana_d0_C)<-extentsion_d03
extent(manana_d0_D)<-extentsion_d03
extent(manana_d0_E)<-extentsion_d03
extent(manana_d0_F)<-extentsion_d03
#manana_d0<-brick(manana_d0_A,manana_d0_B,manana_d0_C,manana_d0_D,manana_d0_E,manana_d0_F)
manana_d0<-brick(manana_d0_A,manana_d0_C,manana_d0_D,manana_d0_E,manana_d0_F)
lluvia_manana_d0<- stackApply(manana_d0, indices=rep(1,nlayers(manana_d0)), base::max, na.rm=TRUE)
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
extent(tarde_d0_A)<-extentsion_d03
extent(tarde_d0_B)<-extentsion_d03
extent(tarde_d0_C)<-extentsion_d03
extent(tarde_d0_D)<-extentsion_d03
extent(tarde_d0_E)<-extentsion_d03
extent(tarde_d0_F)<-extentsion_d03
#tarde_d0<-brick(tarde_d0_A,tarde_d0_B,tarde_d0_C,tarde_d0_D,tarde_d0_E,tarde_d0_F)
tarde_d0<-brick(tarde_d0_A,tarde_d0_C,tarde_d0_D,tarde_d0_E,tarde_d0_F)
lluvia_tarde_d0<- stackApply(tarde_d0, indices=rep(1,nlayers(tarde_d0)), base::max, na.rm=TRUE)
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
extent(noche_d0_A)<-extentsion_d03
extent(noche_d0_B)<-extentsion_d03
extent(noche_d0_C)<-extentsion_d03
extent(noche_d0_D)<-extentsion_d03
extent(noche_d0_E)<-extentsion_d03
extent(noche_d0_F)<-extentsion_d03
#noche_d0<-brick(noche_d0_A,noche_d0_B,noche_d0_C,noche_d0_D,noche_d0_E,noche_d0_F)
noche_d0<-brick(noche_d0_A,noche_d0_C,noche_d0_D,noche_d0_E,noche_d0_F)
lluvia_noche_d0<- stackApply(noche_d0, indices=rep(1,nlayers(noche_d0)), base::max, na.rm=TRUE)
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
extent(madrugada_d1_A)<-extentsion_d03
extent(madrugada_d1_B)<-extentsion_d03
extent(madrugada_d1_C)<-extentsion_d03
extent(madrugada_d1_D)<-extentsion_d03
extent(madrugada_d1_E)<-extentsion_d03
extent(madrugada_d1_F)<-extentsion_d03
#madrugada_d1<-brick(madrugada_d1_A,madrugada_d1_B,madrugada_d1_C,madrugada_d1_D,madrugada_d1_E,madrugada_d1_F)
madrugada_d1<-brick(madrugada_d1_A,madrugada_d1_C,madrugada_d1_D,madrugada_d1_E,madrugada_d1_F)
lluvia_madrugada_d1<- stackApply(madrugada_d1, indices=rep(1,nlayers(madrugada_d1)), base::max, na.rm=TRUE)
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
lluvia_24h<- stackApply(pila_24h, indices=rep(1,nlayers(pila_24h)), base::max, na.rm=TRUE)
lluvia_48h<- stackApply(pila_48h, indices=rep(1,nlayers(pila_48h)), base::mean, na.rm=TRUE)
lluvia_72h<- stackApply(pila_72h, indices=rep(1,nlayers(pila_72h)), base::mean, na.rm=TRUE)
extent(lluvia_24h)<-extentsion_d03
extent(lluvia_48h)<-extentsion_d03
extent(lluvia_72h)<-extentsion_d03
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
estadisticos<-function(lluvia,zona_num){
zona1<-subset(shp, zona==zona_num)
pptz1<-crop(lluvia,extent(zona1))
pptz1<-mask(pptz1,zona1)
vals<-getValues(pptz1)

prom<-mean(vals,na.rm=TRUE)
mediana<-median(vals,na.rm = TRUE)
minimo<-min(vals,na.rm=TRUE)
maximo<-max(vals,na.rm=TRUE)
promedio_alto<-(prom+maximo)/2
percentiles<-quantile(vals, probs = c(0.25,0.75), na.rm = TRUE)

resultados<-c(minimo,maximo,prom,mediana,promedio_alto,percentiles)

return(resultados)
}
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
zona1_24h<-estadisticos(lluvia_24h,1)
zona2_24h<-estadisticos(lluvia_24h,2)
zona3_24h<-estadisticos(lluvia_24h,3)
zona4_24h<-estadisticos(lluvia_24h,4)
zona5_24h<-estadisticos(lluvia_24h,5)
zona6_24h<-estadisticos(lluvia_24h,6)
zona7_24h<-estadisticos(lluvia_24h,7)
zona8_24h<-estadisticos(lluvia_24h,8)
zona9_24h<-estadisticos(lluvia_24h,9)
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
zona1_48h<-estadisticos(lluvia_48h,1)
zona2_48h<-estadisticos(lluvia_48h,2)
zona3_48h<-estadisticos(lluvia_48h,3)
zona4_48h<-estadisticos(lluvia_48h,4)
zona5_48h<-estadisticos(lluvia_48h,5)
zona6_48h<-estadisticos(lluvia_48h,6)
zona7_48h<-estadisticos(lluvia_48h,7)
zona8_48h<-estadisticos(lluvia_48h,8)
zona9_48h<-estadisticos(lluvia_48h,9)
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
zona1_72h<-estadisticos(lluvia_72h,1)
zona2_72h<-estadisticos(lluvia_72h,2)
zona3_72h<-estadisticos(lluvia_72h,3)
zona4_72h<-estadisticos(lluvia_72h,4)
zona5_72h<-estadisticos(lluvia_72h,5)
zona6_72h<-estadisticos(lluvia_72h,6)
zona7_72h<-estadisticos(lluvia_72h,7)
zona8_72h<-estadisticos(lluvia_72h,8)
zona9_72h<-estadisticos(lluvia_72h,9)
#------------------------------------------------------------------------------------------------------------->


#------------------------------------------------------------------------------------------------------------->
lluvia_manana_zona1<-estadisticos(lluvia_manana_d0,1)
lluvia_manana_zona2<-estadisticos(lluvia_manana_d0,2)
lluvia_manana_zona3<-estadisticos(lluvia_manana_d0,3)
lluvia_manana_zona4<-estadisticos(lluvia_manana_d0,4)
lluvia_manana_zona5<-estadisticos(lluvia_manana_d0,5)
lluvia_manana_zona6<-estadisticos(lluvia_manana_d0,6)
lluvia_manana_zona7<-estadisticos(lluvia_manana_d0,7)
lluvia_manana_zona8<-estadisticos(lluvia_manana_d0,8)
lluvia_manana_zona9<-estadisticos(lluvia_manana_d0,9)
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
lluvia_tarde_zona1<-estadisticos(lluvia_tarde_d0,1)
lluvia_tarde_zona2<-estadisticos(lluvia_tarde_d0,2)
lluvia_tarde_zona3<-estadisticos(lluvia_tarde_d0,3)
lluvia_tarde_zona4<-estadisticos(lluvia_tarde_d0,4)
lluvia_tarde_zona5<-estadisticos(lluvia_tarde_d0,5)
lluvia_tarde_zona6<-estadisticos(lluvia_tarde_d0,6)
lluvia_tarde_zona7<-estadisticos(lluvia_tarde_d0,7)
lluvia_tarde_zona8<-estadisticos(lluvia_tarde_d0,8)
lluvia_tarde_zona9<-estadisticos(lluvia_tarde_d0,9)
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
lluvia_noche_zona1<-estadisticos(lluvia_noche_d0,1)
lluvia_noche_zona2<-estadisticos(lluvia_noche_d0,2)
lluvia_noche_zona3<-estadisticos(lluvia_noche_d0,3)
lluvia_noche_zona4<-estadisticos(lluvia_noche_d0,4)
lluvia_noche_zona5<-estadisticos(lluvia_noche_d0,5)
lluvia_noche_zona6<-estadisticos(lluvia_noche_d0,6)
lluvia_noche_zona7<-estadisticos(lluvia_noche_d0,7)
lluvia_noche_zona8<-estadisticos(lluvia_noche_d0,8)
lluvia_noche_zona9<-estadisticos(lluvia_noche_d0,9)
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
lluvia_madrugada_zona1<-estadisticos(lluvia_madrugada_d1,1)
lluvia_madrugada_zona2<-estadisticos(lluvia_madrugada_d1,2)
lluvia_madrugada_zona3<-estadisticos(lluvia_madrugada_d1,3)
lluvia_madrugada_zona4<-estadisticos(lluvia_madrugada_d1,4)
lluvia_madrugada_zona5<-estadisticos(lluvia_madrugada_d1,5)
lluvia_madrugada_zona6<-estadisticos(lluvia_madrugada_d1,6)
lluvia_madrugada_zona7<-estadisticos(lluvia_madrugada_d1,7)
lluvia_madrugada_zona8<-estadisticos(lluvia_madrugada_d1,8)
lluvia_madrugada_zona9<-estadisticos(lluvia_madrugada_d1,9)
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
titulos<-c("Id Zona","Minimo","Maximo","Promedio", "Mediana", "Promedio Alto","P25","P75")
nom_zonas<-c("Zona1","Zona2","Zona3","Zona4","Zona5","Zona6","Zona7","Zona8","Zona9")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
datos_lluvia_24h<-rbind.data.frame(zona1_24h,zona2_24h,zona3_24h,zona4_24h,zona5_24h,zona6_24h,zona7_24h,zona8_24h,zona9_24h)
datos_lluvia_24h<-cbind.data.frame(nom_zonas,datos_lluvia_24h)
names(datos_lluvia_24h)<-titulos

write.table(datos_lluvia_24h, file = "datos_lluvia_24h.csv", row.names = FALSE, col.names = TRUE, quote = FALSE, sep=",")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
datos_lluvia_48h<-rbind.data.frame(zona1_48h,zona2_48h,zona3_48h,zona4_48h,zona5_48h,zona6_48h,zona7_48h,zona8_48h,zona9_48h)
datos_lluvia_48h<-cbind.data.frame(nom_zonas,datos_lluvia_48h)
names(datos_lluvia_48h)<-titulos

write.table(datos_lluvia_48h, file = "datos_lluvia_48h.csv", row.names = FALSE, col.names = TRUE, quote = FALSE, sep=",")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
datos_lluvia_72h<-rbind.data.frame(zona1_72h,zona2_72h,zona3_72h,zona4_72h,zona5_72h,zona6_72h,zona7_72h,zona8_72h,zona9_72h)
datos_lluvia_72h<-cbind.data.frame(nom_zonas,datos_lluvia_72h)
names(datos_lluvia_72h)<-titulos

write.table(datos_lluvia_72h, file = "datos_lluvia_72h.csv", row.names = FALSE, col.names = TRUE, quote = FALSE, sep=",")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
datos_lluvia_manana_d0<-rbind.data.frame(lluvia_manana_zona1,lluvia_manana_zona2,lluvia_manana_zona3,lluvia_manana_zona4,
                                         lluvia_manana_zona5,lluvia_manana_zona6,lluvia_manana_zona7,lluvia_manana_zona8,
                                         lluvia_manana_zona9)
datos_lluvia_manana_d0<-cbind.data.frame(nom_zonas,datos_lluvia_manana_d0)
names(datos_lluvia_manana_d0)<-titulos

write.table(datos_lluvia_manana_d0, file = "datos_lluvia_manana_d0.csv", row.names = FALSE, col.names = TRUE, quote = FALSE, sep=",")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
datos_lluvia_tarde_d0<-rbind.data.frame(lluvia_tarde_zona1,lluvia_tarde_zona2,lluvia_tarde_zona3,lluvia_tarde_zona4,
                                         lluvia_tarde_zona5,lluvia_tarde_zona6,lluvia_tarde_zona7,lluvia_tarde_zona8,
                                         lluvia_tarde_zona9)
datos_lluvia_tarde_d0<-cbind.data.frame(nom_zonas,datos_lluvia_tarde_d0)
names(datos_lluvia_tarde_d0)<-titulos

write.table(datos_lluvia_tarde_d0, file = "datos_lluvia_tarde_d0.csv", row.names = FALSE, col.names = TRUE, quote = FALSE, sep=",")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
datos_lluvia_noche_d0<-rbind.data.frame(lluvia_noche_zona1,lluvia_noche_zona2,lluvia_noche_zona3,lluvia_noche_zona4,
                                        lluvia_noche_zona5,lluvia_noche_zona6,lluvia_noche_zona7,lluvia_noche_zona8,
                                        lluvia_noche_zona9)
datos_lluvia_noche_d0<-cbind.data.frame(nom_zonas,datos_lluvia_noche_d0)
names(datos_lluvia_noche_d0)<-titulos

write.table(datos_lluvia_noche_d0, file = "datos_lluvia_noche_d0.csv", row.names = FALSE, col.names = TRUE, quote = FALSE, sep=",")
#------------------------------------------------------------------------------------------------------------->

#------------------------------------------------------------------------------------------------------------->
datos_lluvia_madrugada_d1<-rbind.data.frame(lluvia_madrugada_zona1,lluvia_madrugada_zona2,lluvia_madrugada_zona3,lluvia_madrugada_zona4,
                                        lluvia_madrugada_zona5,lluvia_madrugada_zona6,lluvia_madrugada_zona7,lluvia_madrugada_zona8,
                                        lluvia_madrugada_zona9)
datos_lluvia_madrugada_d1<-cbind.data.frame(nom_zonas,datos_lluvia_madrugada_d1)
names(datos_lluvia_madrugada_d1)<-titulos

write.table(datos_lluvia_madrugada_d1, file = "datos_lluvia_madrugada_d1.csv", row.names = FALSE, col.names = TRUE, quote = FALSE, sep=",")
#------------------------------------------------------------------------------------------------------------->