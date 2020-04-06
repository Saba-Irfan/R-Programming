corr <- function ( directory , threshold = 0){
	filelist <- list.files( path = directory , pattern =".csv", full.names = TRUE)
	corr_vect <- numeric()
	id <-1:332
	complete.obs<-numeric()
	for ( i in id){
		data <- read.csv(filelist[i])
 		complete.obs <- data[complete.cases(data),]
    		if (nrow(complete.obs) > threshold) {
      		corr_vect <- c(corr_vect, cor(x=complete.obs[,"sulfate"], y=complete.obs[, "nitrate"]))
   		 }
 	 }
    
    return(corr_vect)
		}
	