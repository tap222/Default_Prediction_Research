# create a custom function
fillwithMean <- function(x){
  na_index <- which(x == 0.00)        
  mean_x <- mean(x, na.rm=T)
  x[na_index] <- mean_x
  return(x)
}

df_t <- data.frame(apply(df,2,fillwithMean))
View(df_t)
