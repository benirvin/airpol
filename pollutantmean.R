pollutantmean <- function(directory, pollutant,ID=1:332){
    dat<-data.frame()
    ct<-0
    dsum<-0
    flist<-list.files(directory)
    for(i in ID){
        tvec<- read.csv(paste(directory,"/",flist[i],sep=""))
        ct <- ct + sum(!is.na(tvec[,pollutant]))
        dsum<-dsum + sum(tvec[,pollutant],na.rm = TRUE)
        
    }
    dsum/ct
}