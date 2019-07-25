#!/usr/bin/Rscript

install.packages('devtools')
install.packages('knitr')
install.packages('goeveg')
library(devtools)
install_github("ternaustralia/ausplotsR", build_vignettes = TRUE)