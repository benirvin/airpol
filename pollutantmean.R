pollutantmean <- function(directory, pollutant,ID=1:332){
# finding mean by getting number of vallues and sum of values
    ct<-0  # to hold count of values
    dsum<-0  # to hold sum of values
    flist<-list.files(directory)
    for(i in ID){
        tvec<- read.csv(paste(directory,"/",flist[i],sep=""))
        ct <- ct + sum(!is.na(tvec[,pollutant]))
        dsum<-dsum + sum(tvec[,pollutant],na.rm = TRUE)
        
    }
    dsum/ct  #this is the mean
}