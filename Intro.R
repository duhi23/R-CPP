##### Introduccion #####

# Instalacion

install.packages(c("installr", "Rcpp", "inline"), dependencies = TRUE)
devtools::install_github('talgalili/installr')
install.Rtools()

library('Rcpp')
library('inline')

sourceCpp("pares.cpp")

cppFunction('int suma(int x, int y, int z) {
            int sum = x + y + z;
            return sum;
            }')

suma

suma(1, 2, 3)



