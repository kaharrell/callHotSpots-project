if (!require("RCurl")){install.packages("RCurl", repos="http://cran.rstudio.com")}
if (!require("XML")){install.packages("XML", repos="http://cran.rstudio.com")}
source("https://bioconductor.org/biocLite.R")
if (!require("rtracklayer")){biocLite("rtracklayer")}
if (!require("ShortRead")){biocLite("ShortRead")}
