##### Introduccion #####

# Instalacion

install.packages(c("installr", "Rcpp", "inline"), dependencies = TRUE)
devtools::install_github('talgalili/installr')
install.Rtools()

library('Rcpp')
library('inline')

sourceCpp("pares.cpp")

# Función compilada (1)
cppFunction('int suma(int x, int y, int z) {
            int sum = x + y + z;
            return sum;
            }')

# Función compilada (2)
cppFunction('int fibonacci(const int x) {
if (x < 2) return(x);
return (fibonacci(x - 1)) + fibonacci(x - 2);
}')

# Función en texto
cppfib <- 'int fibonacci(const int x) {
      if (x < 2) return(x);
      return (fibonacci(x - 1)) + fibonacci(x - 2);
}'

# Llamado a función 
fibCpp <- cppFunction(cppfib)

# Ejecución de funciones
suma(1, 2, 3)
fibonacci(8)
fibCpp(8)

