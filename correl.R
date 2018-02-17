corr <- function(directory, threshold=0){
    
    result <-c()

    filist<-list.files(directory)
    for(i in 1:length(filist)){
        tvec<- read.csv(paste(directory,"/",filist[i],sep=""))
        cvec <- tvec[complete.cases(tvec),]
        if (nrow(cvec)>threshold) {
            cucor<- cor(cvec$nitrate,cvec$sulfate)
            result <- c(result,cucor)
        } 
    }
    return(result)
}