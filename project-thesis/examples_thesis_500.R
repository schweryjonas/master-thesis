source("simulation_linear-regression_charts.R");
source("simulation_logistic-regression_charts.R");

set.seed(123);
nreps <- 500;

#### Example 1: Linear regression ####
n <- 100;
betas <-  c(4, 4, 4, -6*sqrt(2), 4/3, rep(0, times = 995));
rho <- c(0, 0.9, 0, 0.9);
sd <- c(0.1, 0.1, 5, 5);
example1 <- plotSimulationLinearRegression(betas = betas, n = n, 
                                           rho = rho, sd = sd, nreps = nreps, limitAxis = 20);
example1
save(example1, file = "plots_500/example1.RData")

#### Example 2: Linear regression ####
n <- 100;
betas <-  c(4, 4, 4, -6*sqrt(2), 4/3, rep(0, times = 995));
rho <- c(0.3, 0.7, 0.3, 0.7);
sd <- c(1.5, 1.5, 3.5, 3.5);
example2 <- plotSimulationLinearRegression(betas = betas, n = n, 
                                             rho = rho, sd = sd, nreps = nreps, limitAxis = 20);
example2
save(example2, file = "plots_500/example2.RData")

#### Example 3: Linear Regression ####
n <- 150;
betas <-  c(4, 4, -6*sqrt(2), 4/3, rep(0, times = 10));
rho <- c(0, 0.9, 0, 0.9);
sd <- c(0.1, 0.1, 5, 5);
example3 <- plotSimulationLinearRegression(betas = betas, n = n, 
                                           rho = rho, sd = sd, nreps = nreps, limitAxis = 15, noise = TRUE);
example3
save(example3, file = "plots_500/example3.RData")

#### Example 4: Linear Regression ####
n <- 150;
betas <-  c(4, 4, -6*sqrt(2), 4/3, 0, 0, 4, 0, 1, rep(0, times=3));
rho <- c(0, 0.9, 0, 0.9);
sd <- c(0.1, 0.1, 5, 5);
example4 <- plotSimulationLinearRegression(betas = betas, n = n, 
                                             rho = rho, sd = sd, nreps = nreps, limitAxis = 12, quad = TRUE);
example4
save(example4, file = "plots_500/example4.RData")

#### Example 5: Linear Regression ####
n <- 150;
betas <-  c(rep(1, times = 8));
rho <- c(0, 0.9, 0, 0.9);
sd <- c(0.1, 0.1, 5, 5);
example5 <- plotSimulationLinearRegression(betas = betas, n = n, 
                                           rho = rho, sd = sd, nreps = nreps, limitAxis = 8);
example5
save(example5, file = "plots_500/example5.RData")

#### Example 6: Linear Regression ####
n <- 150;
betas <-  c(rep(1, times = 8));
rho <- c(0.3, 0.7, 0.3, 0.7);
sd <- c(1.5, 1.5, 3.5, 3.5);
example6 <- plotSimulationLinearRegression(betas = betas, n = n, 
                                             rho = rho, sd = sd, nreps = nreps, limitAxis = 8);
example6
save(example6, file = "plots_500/example6.RData")

#### Example 7: Logistic regression ####
n <- 80;
betas <- c(1, 1/2, 1/3, 1/4, 1/5, 1/6, 0);
rho <- c(0, 0.5, 0.9);
sd <- c(NA, NA, NA);
example7 <- plotSimulationLogisticRegression(betas = betas, n = n, rho = rho, sd = sd, 
                                             nreps= nreps, limitAxis = 7) 
example7
save(example7, file = "plots_500/example7.RData")

#### Example 8: Logistic regression #
n <- 5000;
betas <- c(1, 1/2, 1/3, 1/4, 1/5, 1/6, 0);
rho <- c(0, 0.5, 0.9);
sd <- c(NA, NA, NA);
example8 <- plotSimulationLogisticRegression(betas = betas, n = n, rho = rho, sd = sd, 
                                             nreps= nreps, limitAxis = 7) 
example8
save(example8, file = "plots_500/example8.RData")


#### Example 9: Logistic regression ####
n <- 100;
betas <- c(4, 4, -6*sqrt(2), 4/3, rep(0, times = 196));
rho <- c(0, 0.5, 0.9);
sd <- c(NA, NA, NA);
example9 <- plotSimulationLogisticRegression(betas = betas, n = n, rho = rho, sd = sd, 
                                             nreps= nreps, limitAxis = 12) 
example9
save(example9, file = "plots_500/example9.RData")

#### Example 10: logistic regression ####
n <- 250;
betas <- c(2, 3, 0, 0, 3/2, rep(0, times = 295));
rho <- c(0, 0.5, 0.9);
sd <- c(NA, NA, NA);
example10 <- plotSimulationLogisticRegression(betas = betas, n = n, rho = rho, sd = sd, 
                                              nreps= nreps, limitAxis = 10) 
example10
save(example10, file = "plots_500/example10.RData")


