#!/usr/bin/Rscript

install.packages(c('devtools'), dependencies = TRUE,repos = "http://cran.us.r-project.org")
### for Ivan
install.packages(c('rgdal', 'rgeos', 'animation', 'RProtoBuf', 'V8'), dependencies = TRUE, Ncpus = 3,repos = "http://cran.us.r-project.org")
install.packages(c('units', 'protolite', 'jqr', 'velox'), dependencies = TRUE, Ncpus = 3,repos = "http://cran.us.r-project.org")
install.packages("rstan", repos = "https://cran.r-project.org", dependencies = TRUE)
### for ausplot
install.packages(c('knitr', 'plyr', 'jsonlite', 'rmarkdown', 'goeveg', 'vegan'), dependencies = TRUE, Ncpus = 3,repos = "http://cran.us.r-project.org")
install.packages(c('simba', 'jose', 'R.methodsS3', 'R.oo', 'R.utils', 'roxygen2'), dependencies = TRUE, Ncpus = 3,repos = "http://cran.us.r-project.org")
