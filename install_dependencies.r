#!/usr/bin/Rscript

install.packages(c('devtools'), dependencies = TRUE)
### for Ivan
install.packages(c('rgdal', 'rgeos', 'animation'), dependencies = TRUE)
install.packages(c("RProtoBuf"), dependencies = TRUE)
install.packages(c('V8'), dependencies = TRUE)
install.packages(c('units', 'protolite', 'jqr'), dependencies = TRUE)
install.packages(c('velox'), dependencies = TRUE)
install.packages("rstan", repos = "https://cran.r-project.org", dependencies = TRUE)
### for ausplot
install.packages(c('knitr', 'plyr', 'jsonlite', 'rmarkdown'), dependencies = TRUE)
install.packages(c('goeveg', 'vegan'), dependencies = TRUE)
install.packages(c('simba', 'jose', 'R.methodsS3', 'R.oo', 'R.utils', 'roxygen2'), dependencies = TRUE)
