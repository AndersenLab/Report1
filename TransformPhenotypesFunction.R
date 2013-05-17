library(scales)
options(warn=-1)
range.minus1to1 <- function(x){
	only.numeric <- na.omit(x)
	zero2one <- (x - min(only.numeric))/(max(only.numeric)-min(only.numeric))
	return(2*zero2one - 1)
}

makePhenoDf <- function(file, trait){
		trait.name = trait
		pheno <- read.delim(file, stringsAsFactors = FALSE, header = T, sep=",")
		untransformedtrait = pheno[trait.name]
		logtrait = sign(pheno[trait.name])*log(abs(pheno[trait.name]))
		sqrttrait = sign(pheno[trait.name])*sqrt(abs(pheno[trait.name]))
		inversetrait = 1/pheno[trait.name]
		arcsintrait = asin(range.minus1to1(sqrttrait))
		pheno.df <- data.frame("id"=as.numeric(gsub("QX", "", pheno$strain)), "trait" = untransformedtrait, "logtraits" = logtrait, "sqrttraits" = sqrttrait, "inversetraits" = inversetrait, "arcsintraits" = arcsintrait)
		names(pheno.df) <- c("id", "trait", "logtraits", "sqrttraits", "inversetraits", "arcsintraits")
		return(pheno.df)
		}

plotTransformedPhenos <- function(pheno.df){
  library(ggplot2)
 
  plot1 <- ggplot(pheno.df) + aes(x = trait) + 
           geom_histogram() +
           labs(title = "Untransformed Data") +
           xlab(yourTrait)
  
  plot2 <- ggplot(pheno.df) + 
           aes(x = logtraits) + 
           geom_histogram() + 
           labs(title = "Log Transformed Data") +
           xlab(paste("Log of", yourTrait)) 
           
           
  plot3 <- ggplot(pheno.df) + 
           aes(x = sqrttraits) + 
           geom_histogram() + 
           labs(title = "Square Root Transformed Data") +
           xlab(paste("Square Root of", yourTrait))
                      
  plot4 <- ggplot(pheno.df) + 
           aes(x = inversetraits) + 
           geom_histogram() + 
           labs(title = "Inverse Transformed Data") +
           xlab(paste("Inverse of", yourTrait))
                      
  plot5 <- ggplot(pheno.df) + 
           aes(x = arcsintraits) + 
           geom_histogram() + 
           labs(title = "Arcsin Transformed Data") +
           xlab(paste("Arcsin Transform of", yourTrait))
  
  suppressMessages(print(plot1))
  suppressMessages(print(plot2))
  suppressMessages(print(plot3))
  suppressMessages(print(plot4))
  suppressMessages(print(plot5))
}

