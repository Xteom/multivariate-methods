install.packages(c("dplyr", "lattice", "tidyverse", "skimr",
                     "psych", "hexbin", "RColorBrewer", "corrplot", "GGally"))

download.file("https://cran.r-project.org/src/contrib/Archive/nutshell.audioscrobbler/nutshell.audioscrobbler_1.0.tar.gz",
 "datos\nutshell\nutshell.audioscrobbler_1.0.tar.gz")
download.file("https://cran.r-project.org/src/contrib/Archive/nutshell.bbdb/nutshell.bbdb_1.0.tar.gz",
 "datos\nutshell\nutshell.bbdb_1.0.tar.gz")
download.file("https://cran.r-project.org/src/contrib/Archive/nutshell/nutshell_2.0.tar.gz", 
"datos\nutshell\nutshell_2.0.tar.gz")

install.packages("datos\nutshell\nutshell.audioscrobbler_1.0.tar.gz", repos = NULL) 
install.packages("datos\nutshell\nutshell.bbdb_1.0.tar.gz", repos = NULL)
install.packages("datos\nutshell\nutshell_2.0.tar.gz", repos = NULL)
