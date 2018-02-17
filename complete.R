complete <- function(directory, ID=1:332){
# need to get a vector of the number of complete cases in all hte IDs 
# submitted
    ct<-0
    ccn <- vector(mode = "integer",length = length(ID))
    filist<-list.files(directory)
    for(i in seq_along(ID)){
        tvec<- read.csv(paste(directory,"/",filist[ID[i]],sep=""))
        ct <- sum(complete.cases(tvec))
        ccn[i]<-ct  #in this function, i must be a simple index for hte 
                    # vector of results
        
    }
    # using data.frame allows combining columns of different types
    data.frame("name"=filist[ID],"nobs"=ccn,stringsAsFactors=FALSE)
}