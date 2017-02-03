##### Introduccion #####

# Instalacion

install.packages(c("installr", "Rcpp", "inline"), dependencies = TRUE)
devtools::install_github('talgalili/installr')
install.Rtools()

library('Rcpp')
library('inline')

# Suma dos elementos
cppFunction('
double add_2(double x, double y) {
            double value = x + y;
            return value;
            }
            ')

add_2(3,8)

sourceCpp("pares.cpp")

# Función compilada (1)
cppFunction('int suma(int x, int y, int z) {
            int sum = x + y + z;
            return sum;
            }')

suma(3,4,5)

# Función compilada (2)
cppFunction('int fibonacci(const int x) {
      if (x < 2) return(x);
      return (fibonacci(x - 1)) + fibonacci(x - 2);
}')

fibonacci(4)
fibonacci(10)

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


src <- 'Rcpp::NumericVector xa(a);
      Rcpp::NumericVector xb(b);
      int n_xa = xa.size(), n_xb = xb.size();
      Rcpp::NumericVector xab(n_xa + n_xb - 1);
      for(int i = 0; i < n_xa; i++)
            for(int j = 0; j < n_xb; j++)
            xab[i + j] += xa[i] * xb[j];
      return xab;'

fun <- cxxfunction(signature(a="numeric", b="numeric"), src, plugin="Rcpp")

fun(1:4, 2:5)


fun(1:10, 11:20)