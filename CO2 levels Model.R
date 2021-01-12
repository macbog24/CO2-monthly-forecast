
library(itsmr)
mondata = read.table("ftp://aftp.cmdl.noaa.gov/products/trends/co2/co2_mm_mlo.txt")
monco2 = mondata$V5

M=c("season",12, "trend",1)
e = Resid(monco2,M)
#t = trend(monco2,1)
#y = monco2-t
a = arma(e,1,1)
f = forecast(monco2, M, a, alpha = 0.05)


