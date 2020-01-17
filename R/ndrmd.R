# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

library(rmarkdown)

# Features of the Template
ndrmd1 <- function(toc = TRUE, code_folding = "hide", number_sections=TRUE) {

  # get the locations of resource files located within the package
  #css <- system.file("rmarkdown", "templates", "epurate" ,"resources", "style.css", package = "ndtest")
  template <- system.file("rmarkdown", "templates", "ndrmd1" ,"resources", "template_ndrmd1.html", package = "ndrmd")

  # call the base html_document function
  rmarkdown::html_document( theme= "lumen",
                            template= template,
                            #css= css,
                            toc= toc,
                            toc_float = TRUE,
                            toc_depth = 2,
                            number_sections= number_sections,
                            df_print = "paged",
                            code_folding = code_folding,
  )
}


