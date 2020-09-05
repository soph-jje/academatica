library(RMySQL)
library("DBI")
library(flexdashboard)
library(readr)
library(dplyr)
library(DT)
mydb = dbConnect(MySQL(), user = 'root', password = 'root123', dbname='academatica_db', host = '172.19.0.2')

stats<- as.data.frame(mydb%>% tbl("stats"))
videos<- as.data.frame(mydb%>% tbl("videos"))
metadata<- as.data.frame(mydb%>% tbl("metadata"))

                         