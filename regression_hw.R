#
set.seed(10)

# počet pozorování
n = 1000

# definované proměnné
epsilon = rnorm(n, 0, 20)
IQ = rnorm(n, 90, 30)
educ = runif(n, 9, 20)
exper = runif(n, 0, 40)

# původní regrese
wage = 5 + 10*IQ + 3*educ + 6*exper + epsilon

data1 = data.frame(wage, IQ, educ, exper)

# logaritmovaná regrese vycházející z původní
regresion1 = lm(log(wage) ~ IQ + educ + log(exper), data1)
summary(regresion1)
bptest(regresion1)

