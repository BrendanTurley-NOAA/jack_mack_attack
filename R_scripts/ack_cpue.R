library(r4ss)

setwd('~/Desktop/professional/biblioteca/Classes/ss/ack_cpue')

path <- '~/Desktop/professional/biblioteca/Classes/ss/'
modelrun <- 'ack_cpue'

mymodel <- SS_output(
  dir=paste0(path, modelrun)
)


mymodel$sigma_R_in
mymodel$sigma_R_info
mymodel$RunTime
names(mymodel)
dev_parms <- mymodel$derived_quants
parms <- mymodel$estimated_non_dev_parameters


SS_plots(replist=mymodel, png=T)


SS_fitbiasramp(mymodel)
SSMethod.TA1.8(mymodel,"age",1,plotit=T)
