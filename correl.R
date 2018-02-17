corr <- function(directory, threshold=0){
# return a vector of correlations for files exceeding minimum data pairs   
    result <-c()  #initialize here so result is defined at outer level

    filist<-list.files(directory)
    for(i in 1:length(filist)){
        tvec<- read.csv(paste(directory,"/",filist[i],sep=""))
        cvec <- tvec[complete.cases(tvec),]
        if (nrow(cvec)>threshold) {
            cucor<- cor(cvec$nitrate,cvec$sulfate)
            result <- c(result,cucor) #jsut keep growing the vector
        } 
    }
    return(result) # seems like I need this statement or the result
                   #may not get returned, due to scope
}