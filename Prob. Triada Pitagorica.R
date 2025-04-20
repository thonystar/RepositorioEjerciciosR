###################################################
############# PROBLEMA # 1     ###################
##################################################

cota_sup <- 1000
num <- list()

a <- function(limit){
    iter <- 1
    for (a in 1:(limit/3)){
       for (b in (a+1):(limit/2)){
           c <- limit - a - b
           if (a^2 + b^2 == c^2 && a < b && b < c) {
            num[[iter]] <- data.frame(a= a, b= b, c= c)
            iter = iter + 1
           }
           
       } 
    
    }
    if (length(num) > 0){
     data <- do.call(rbind, num) 
     return(data)
    }else{
     return("No se encontraron tripletes pitagóricos para ese N.")   
    }
   
}

a(cota_sup)

z <- list(a = 1:10, b = 10:20)
z
y <- c(5:15)
a <- data.frame(a = z[[1]])
a

