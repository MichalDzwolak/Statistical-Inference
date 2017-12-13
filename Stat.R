library(ggplot2)

set.seed(123)

n = 40
  
lambda = 0.2

simul = 1000

dist = replicate(simul, rexp(n, lambda))

distmeans = apply(dist, 2, mean)

#theoretical mean 1/0.2 = 5
#theoretical standard deviation 1/0.2 = 5

#theoretical variance 
(1/lambda)/sqrt(n)

#real mean
mean(distmeans)

pl  = ggplot() + geom_histogram(aes(x=distmeans), col='white', alpha=0.5) + 
  geom_vline(xintercept = mean(distmeans), col = 'red', linetype = "dashed") +
  xlab('Simulation means')
  
pl


