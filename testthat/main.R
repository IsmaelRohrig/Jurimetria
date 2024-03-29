# main file
# http://r-pkgs.had.co.nz/

# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

# packs
library(devtools)

# session_info
# session_info()

# creating manual
devtools::document()

# loading jurimetrics
devtools::load_all()
# roxygen2::roxygenize()
search()

# installing and attaching jurimetrics
devtools::install_github('filipezabala/jurimetrics', force = T)
library(jurimetrics)



