##### Introduccion #####

# Instalacion

install.packages(c("installr", "Rcpp"), dependencies = TRUE)
library('Rcpp')
devtools::install_github('talgalili/installr')
install.Rtools()


sourceCpp("pares.cpp")

cppFunction('int suma(int x, int y, int z) {
            int sum = x + y + z;
            return sum;
            }')

suma

suma(1, 2, 3)



