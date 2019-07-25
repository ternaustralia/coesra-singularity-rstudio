#!/usr/bin/Rscript

install.packages('devtools', dependencies = TRUE)
install.packages('knitr', dependencies = TRUE)
install.packages('goeveg', dependencies = TRUE)
library(devtools)
install_github("ternaustralia/ausplotsR", build_vignettes = TRUE)