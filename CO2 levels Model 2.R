
library(itsmr)
mondata = read.table("ftp://aftp.cmdl.noaa.gov/products/trends/co2/co2_mm_mlo.txt")
monco2 = mondata$V5
t = season(monco2,12)
plotc(monco2-t)

M=c("season",12, "trend",2)
e = Resid(monco2,M)
a = arma(e,1,1)
f = forecast(monco2, M, a, alpha = 0.05)

monco2_v2 = monco2[-(1:360)]
M=c("season",12, "trend",2)
e = Resid(monco2,M)
a = arma(e,1,1)
f2 = forecast(monco2_v2, M, a, alpha = 0.05)


