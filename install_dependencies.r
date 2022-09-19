#!/usr/bin/Rscript

install.packages(c('devtools'), dependencies = TRUE,repos = "https://cran.csiro.au")
### for Ivan
install.packages(c('animation', 'RProtoBuf', 'V8'), dependencies = TRUE, Ncpus = 3,repos = "https://cran.csiro.au")
install.packages(c('protolite', 'jqr'), dependencies = TRUE, Ncpus = 3,repos = "https://cran.csiro.au")
install.packages("rstan", repos = "https://cran.csiro.au", dependencies = TRUE)
install.packages(c('goeveg', 'vegan', 'simba', 'jose'), Ncpus = 3,repos = "https://cran.csiro.au")

# pre install some pkgs which are not correctly resolved as dependencies
#  - shiny for htmlwidgets
#  - rcpp for pdftools
install.packages(c('shiny', 'RCpp'),
				 Ncpus = 3,repos = "https://cran.csiro.au")

install.packages(c('abind', 'askpass', 'assertthat', 'automap', 'backports',
				'base64enc', 'BH', 'bindr', 'bindrcpp', 'bit', 'bit64', 'bitops', 'blob',
				'bookdown', 'boot', 'brew', 'callr', 'car', 'carData', 'cellranger', 'chron',
				'class', 'classInt', 'cli', 'clipr', 'clisymbols', 'cloudstoR', 'cluster', 'codetools',
				'colorspace', 'commonmark', 'crayon', 'crosstalk', 'curl',
				'data.table', 'datasets', 'DBI', 'desc', 'digest', 'dlnm', 'dotCall64',
				'dplyr', 'DT', 'e1071', 'ellipsis', 'evaluate', 'exactextractr','fansi', 'fgui', 'fields',
				'FNN', 'forcats', 'foreign', 'fs', 'geor', 'ggmap', 'ggplot2', 'gh', 'git2r', 'glue',
				'goftest', 'gridExtra', 'gstat', 'gsubfn',
				'gtable', 'haven', 'highr', 'HistData', 'Hmisc', 'hms', 'htmltools',
				'htmlwidgets', 'httpuv', 'httr', 'igraph', 'ini', 'intervals', 'jsonlite',
				'KernSmooth', 'knitr', 'labeling', 'Lahman', 'later', 'lattice',
				'lazyeval', 'leaflet', 'lme4', 'lmomco', 'Lmoments', 'lubridate',
				'magrittr', 'mapdata', 'maps', 'maptools', 'markdown', 'MASS', 'Matrix',
				'MatrixModels', 'memoise', 'mgcv', 'mime', 'minqa',
				'munsell', 'ncdf4', 'nlme', 'nloptr', 'nnet', 'openssl', 'openxlsx',
				'pander', 'pbkrtest', 'pdftools', 'pillar', 'pkgbuild',
				'pkgconfig', 'pkgload', 'plogr', 'plyr', 'praise', 'prettyunits',
				'processx', 'progress', 'promises', 'proto', 'ps', 'purrr', 'quantreg',
				'R.methodsS3', 'R.oo', 'R.utils', 'R6', 'raster', 'rcmdcheck', 'RColorBrewer',
				'RcppArmadillo', 'RCurl', 'readr', 'readxl', 'rematch',
				'remotes', 'reshape', 'reshape2', 'rgdal', 'rgeos', 'rio', 'rlang',
				'rmarkdown', 'roxygen2', 'rpart', 'RPostgreSQL', 'rprojroot', 'RSQLite',
				'rstudioapi', 'scales', 'season', 'sessioninfo', 'sf',
				'sourcetools', 'sp', 'spacetime', 'spam', 'SparseM', 'spatial', 'SPEI',
				'sqldf', 'stringi', 'stringr', 'survival',
				'swirl', 'swishdbtools', 'sys', 'tarchetypes', 'targets', 'terra', 'testthat', 'tibble', 'tidyselect',
				'tinytex', 'translations', 'units', 'usethis', 'utf8',
				'vctrs', 'velox', 'visNetwork' , 'viridisLite', 'whisker', 'withr', 'xfun', 'xml2',
				'xopen', 'xtable', 'xts', 'yaml', 'zeallot', 'zip', 'zoo'),
				 Ncpus = 3,repos = "https://cran.csiro.au")
### 'RcppEigen' was left out, it is not working