#!/usr/bin/Rscript

install.packages(c('devtools'), dependencies = TRUE,repos = "https://cran.csiro.au")
### for Ivan
install.packages(c('animation', 'RProtoBuf', 'V8'), dependencies = TRUE, Ncpus = 3,repos = "https://cran.csiro.au")
install.packages(c('protolite', 'jqr'), dependencies = TRUE, Ncpus = 3,repos = "https://cran.csiro.au")
install.packages("rstan", repos = "https://cran.csiro.au", dependencies = TRUE)
install.packages(c('goeveg', 'vegan', 'simba', 'jose'), Ncpus = 3,repos = "https://cran.csiro.au")

install.packages(c('abind', 'askpass', 'assertthat', 'automap', 'backports', 'base', 
				'base64enc', 'BH', 'bindr', 'bindrcpp', 'bit', 'bit64', 'bitops', 'blob', 
				'bookdown', 'boot', 'brew', 'callr', 'car', 'carData', 'cellranger', 'chron', 
				'class', 'classInt', 'cli', 'clipr', 'clisymbols', 'cluster', 'codetools', 
				'colorspace', 'commonmark', 'compiler', 'crayon', 'crosstalk', 'curl', 
				'data.table', 'datasets', 'DBI', 'desc', 'digest', 'dlnm', 'dotCall64', 
				'dplyr', 'DT', 'e1071', 'ellipsis', 'evaluate', 'fansi', 'fgui', 'fields', 
				'FNN', 'forcats', 'foreign', 'fs', 'ggplot2', 'gh', 'git2r', 'glue', 
				'goftest', 'graphics', 'grDevices', 'grid', 'gridExtra', 'gstat', 'gsubfn', 
				'gtable', 'haven', 'highr', 'HistData', 'Hmisc', 'hms', 'htmltools', 
				'htmlwidgets', 'httpuv', 'httr', 'ini', 'intervals', 'jsonlite', 
				'KernSmooth', 'knitr', 'labeling', 'Lahman', 'later', 'lattice', 
				'lazyeval', 'leaflet', 'lme4', 'lmomco', 'Lmoments', 'lubridate', 
				'magrittr', 'maps', 'maptools', 'markdown', 'MASS', 'Matrix', 
				'MatrixModels', 'memoise', 'methods', 'mgcv', 'mime', 'minqa', 
				'munsell', 'ncdf4', 'nlme', 'nloptr', 'nnet', 'openssl', 'openxlsx', 
				'pander', 'parallel', 'pbkrtest', 'pdftools', 'pillar', 'pkgbuild', 
				'pkgconfig', 'pkgload', 'plogr', 'plyr', 'praise', 'prettyunits', 
				'processx', 'progress', 'promises', 'proto', 'ps', 'purrr', 'quantreg', 
				'R.methodsS3', 'R.oo', 'R.utils', 'R6', 'raster', 'rcmdcheck', 'RColorBrewer', 
				'Rcpp', 'RcppArmadillo', 'RCurl', 'readr', 'readxl', 'rematch', 
				'remotes', 'reshape', 'reshape2', 'rgdal', 'rgeos', 'rio', 'rlang', 
				'rmarkdown', 'roxygen2', 'rpart', 'RPostgreSQL', 'rprojroot', 'RSQLite', 
				'rstudioapi', 'scales', 'season', 'sessioninfo', 'sf', 'shiny', 
				'sourcetools', 'sp', 'spacetime', 'spam', 'SparseM', 'spatial', 'SPEI', 
				'splines', 'sqldf', 'stats', 'stats4', 'stringi', 'stringr', 'survival', 
				'swirl', 'swishdbtools', 'sys', 'tcltk', 'testthat', 'tibble', 'tidyselect', 
				'tinytex', 'tools', 'translations', 'units', 'usethis', 'utf8', 'utils', 
				'vctrs', 'velox', 'viridisLite', 'whisker', 'withr', 'xfun', 'xml2', 
				'xopen', 'xtable', 'xts', 'yaml', 'zeallot', 'zip', 'zoo'), 
				 Ncpus = 3,repos = "https://cran.csiro.au")
### 'RcppEigen' was left out, it is not working