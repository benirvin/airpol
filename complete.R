complete <- function(directory, ID=1:332){
    
    ct<-0
    ccn <- vector(mode = "integer",length = length(ID))
    filist<-list.files(directory)
    for(i in seq_along(ID)){
        tvec<- read.csv(paste(directory,"/",filist[ID[i]],sep=""))
        ct <- sum(complete.cases(tvec))
        ccn[i]<-ct
        
    }
    data.frame("name"=filist[ID],"nobs"=ccn,stringsAsFactors=FALSE)
}