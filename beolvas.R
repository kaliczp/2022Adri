library(readxl)
data.raw <- read_excel("Adatok cikkhez Kalicz Péternek.xlsx")
## Dig out data
EltHatter <- as.matrix(data.raw[4:8,2:15])
EltHatter <- matrix(as.numeric(EltHatter), nrow = 5)
EltHatter <- EltHatter[c(4,2,1,3,5),]
colnames(EltHatter)  <-  as.character(data.raw[3,2:15, drop = TRUE])
EltHatter <- EltHatter[,c(1:3,5:14,4)]
row.names(EltHatter) <- c("Min","1stQ","Med","2ndQ","Max")
