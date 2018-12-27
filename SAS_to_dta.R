
files <- list.files(pattern = "\\.sas7bdat$")
library("sas7bdat")
library(foreign)
    
for (filename in files) {
    
    #import to R:
    sas_data = read.sas7bdat(filename)     
    filename <- gsub("*\\.[0-9]", "", filename)
    #save into dta file:
    write.dta(sas_data, paste(filename,".dta"))
}

