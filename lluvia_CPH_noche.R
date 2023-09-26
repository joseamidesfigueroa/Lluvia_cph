library(raster)
library(maptools)


#Carga el shapefile con las zonas de pronostico
shp<-shapefile("/home/arw/zonas/zonas_pronostico_lluvia1.shp")

#Define el directorio de trabajo
setwd("/home/arw/temporal/")


#------------------------------------------------------------------------------------------------------------->
#Descarga los archivos de noche d0
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_13.tif", destfile = "13_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_14.tif", destfile = "14_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_15.tif", destfile = "15_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_16.tif", destfile = "16_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_17.tif", destfile = "17_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_18.tif", destfile = "18_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_19.tif", destfile = "19_A.tif")

noche_d0_A<-raster("13_A.tif")+raster("14_A.tif")+raster("15_A.tif")+raster("16_A.tif")+raster("17_A.tif")
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
#Descarga los archivos de tarde d0
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_13.tif", destfile = "13_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_14.tif", destfile = "14_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_15.tif", destfile = "15_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_16.tif", destfile = "16_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_17.tif", destfile = "17_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_18.tif", destfile = "18_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_19.tif", destfile = "19_B.tif")

noche_d0_B<-raster("13_B.tif")+raster("14_B.tif")+raster("15_B.tif")+raster("16_B.tif")+raster("17_B.tif")
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
#Descarga los archivos de noche d0
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_13.tif", destfile = "13_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_14.tif", destfile = "14_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_15.tif", destfile = "15_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_16.tif", destfile = "16_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_17.tif", destfile = "17_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_18.tif", destfile = "18_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_19.tif", destfile = "19_C.tif")

noche_d0_C<-raster("13_C.tif")+raster("14_C.tif")+raster("15_C.tif")+raster("16_C.tif")+raster("17_C.tif")
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
#Descarga los archivos de noche d0
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_13.tif", destfile = "13_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_14.tif", destfile = "14_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_15.tif", destfile = "15_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_16.tif", destfile = "16_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_17.tif", destfile = "17_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_18.tif", destfile = "18_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_19.tif", destfile = "19_D.tif")

noche_d0_D<-raster("13_D.tif")+raster("14_D.tif")+raster("15_D.tif")+raster("16_D.tif")+raster("17_D.tif")
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
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_13.tif", destfile = "13_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_14.tif", destfile = "14_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_15.tif", destfile = "15_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_16.tif", destfile = "16_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_17.tif", destfile = "17_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_18.tif", destfile = "18_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_19.tif", destfile = "19_E.tif")

noche_d0_E<-raster("13_E.tif")+raster("14_E.tif")+raster("15_E.tif")+raster("16_E.tif")+raster("17_E.tif")
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
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_13.tif", destfile = "13_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_14.tif", destfile = "14_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_15.tif", destfile = "15_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_16.tif", destfile = "16_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_17.tif", destfile = "17_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_18.tif", destfile = "18_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_19.tif", destfile = "19_F.tif")

noche_d0_F<-raster("13_F.tif")+raster("14_F.tif")+raster("15_F.tif")+raster("16_F.tif")+raster("17_F.tif")
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
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_20.tif", destfile = "20_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_21.tif", destfile = "21_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_22.tif", destfile = "22_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_23.tif", destfile = "23_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_24.tif", destfile = "24_A.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_A/dominio3/12/geotiff/lluvia_25.tif", destfile = "25_A.tif")

madrugada_d1_A<-raster("20_A.tif")+raster("21_A.tif")+raster("22_A.tif")+raster("23_A.tif")+raster("24_A.tif")
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
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_20.tif", destfile = "20_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_21.tif", destfile = "21_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_22.tif", destfile = "22_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_23.tif", destfile = "23_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_24.tif", destfile = "24_B.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_B/dominio3/12/geotiff/lluvia_25.tif", destfile = "25_B.tif")

madrugada_d1_B<-raster("20_B.tif")+raster("21_B.tif")+raster("22_B.tif")+raster("23_B.tif")+raster("24_B.tif")
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
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_20.tif", destfile = "20_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_21.tif", destfile = "21_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_22.tif", destfile = "22_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_23.tif", destfile = "23_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_24.tif", destfile = "24_C.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_C/dominio3/12/geotiff/lluvia_25.tif", destfile = "25_C.tif")

madrugada_d1_C<-raster("20_C.tif")+raster("21_C.tif")+raster("22_C.tif")+raster("23_C.tif")+raster("24_C.tif")
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
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_20.tif", destfile = "20_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_21.tif", destfile = "21_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_22.tif", destfile = "22_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_23.tif", destfile = "23_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_24.tif", destfile = "24_D.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_D/dominio3/12/geotiff/lluvia_25.tif", destfile = "25_D.tif")

madrugada_d1_D<-raster("20_D.tif")+raster("21_D.tif")+raster("22_D.tif")+raster("23_D.tif")+raster("24_D.tif")
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
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_20.tif", destfile = "20_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_21.tif", destfile = "21_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_22.tif", destfile = "22_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_23.tif", destfile = "23_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_24.tif", destfile = "24_E.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_E/dominio3/12/geotiff/lluvia_25.tif", destfile = "25_E.tif")

madrugada_d1_E<-raster("20_E.tif")+raster("21_E.tif")+raster("22_E.tif")+raster("23_E.tif")+raster("24_E.tif")
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
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_20.tif", destfile = "20_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_21.tif", destfile = "21_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_22.tif", destfile = "22_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_23.tif", destfile = "23_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_24.tif", destfile = "24_F.tif")
download.file("http://srt.marn.gob.sv/wrf_2019_F/dominio3/12/geotiff/lluvia_25.tif", destfile = "25_F.tif")

madrugada_d1_F<-raster("20_F.tif")+raster("21_F.tif")+raster("22_F.tif")+raster("23_F.tif")+raster("24_F.tif")
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
extentsion_d03<-c(269.5991045454544519-360,272.6782775471975242-360,12.6275776326057141,14.9644500000000011)
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