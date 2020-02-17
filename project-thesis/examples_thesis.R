source("simulation_linear-regression_charts.R");
source("simulation_logistic-regression_charts.R");

set.seed(123);
nreps <- 3;

#### Example 1: Linear regression ####
n <- 100;
betas <-  c(4, 4, 4, -6*sqrt(2), 4/3, rep(0, times = 995));
rho <- c(0, 0.9, 0, 0.9);
sd <- c(0.1, 0.1, 5, 5);
example1 <- plotSimulationLinearRegression(betas = betas, n = n, 
                      rho = rho, sd = sd, nreps = nreps, limitAxis = 20);
example1
#save(example1, file = "plots/example1.RData")

#### Example 1_1: Linear regression ####
n <- 100;
betas <-  c(4, 4, 4, -6*sqrt(2), 4/3, rep(0, times = 995));
rho <- c(0.3, 0.7, 0.3, 0.7);
sd <- c(1.5, 1.5, 3.5, 3.5);
example1_1 <- plotSimulationLinearRegression(betas = betas, n = n, 
                                           rho = rho, sd = sd, nreps = nreps, limitAxis = 20);
example1_1
save(example1_1, file = "plots/example1_1.RData")

#### Example 2: Linear Regression ####
n <- 150;
betas <-  c(4, 4, 4, -6*sqrt(2), 4/3, rep(0, times = 9));
rho <- c(0, 0.9, 0, 0.9);
sd <- c(0.1, 0.1, 5, 5);
example2 <- plotSimulationLinearRegression(betas = betas, n = n, 
        rho = rho, sd = sd, nreps = nreps, limitAxis = 15, noise = TRUE);
example2
#save(example2, file = "plots/example2.RData")

#### Example 2_2: Linear Regression ####
n <- 150;
betas <-  c(4, 4, 4, -6*sqrt(2), 4/3, 0, 4, 0, 1, rep(0, times=3));
rho <- c(0, 0.9, 0, 0.9);
sd <- c(0.1, 0.1, 5, 5);
example2_2 <- plotSimulationLinearRegression(betas = betas, n = n, 
                                        rho = rho, sd = sd, nreps = nreps, limitAxis = 12, quad = TRUE);
example2_2
save(example2_2, file = "plots/example2_2.RData")

#### Example 3: Linear Regression ####
n <- 150;
betas <-  c(rep(1, times = 8));
rho <- c(0, 0.9, 0, 0.9);
sd <- c(0.1, 0.1, 5, 5);
example3 <- plotSimulationLinearRegression(betas = betas, n = n, 
                      rho = rho, sd = sd, nreps = nreps, limitAxis = 8);
example3
#save(example3, file = "plots/example3.RData")

#### Example 3_3: Linear Regression ####
n <- 150;
betas <-  c(rep(1, times = 8));
rho <- c(0.3, 0.7, 0.3, 0.7);
sd <- c(1.5, 1.5, 3.5, 3.5);
example3_3 <- plotSimulationLinearRegression(betas = betas, n = n, 
                                           rho = rho, sd = sd, nreps = nreps, limitAxis = 8);
example3_3
save(example3_3, file = "plots/example3_3.RData")

#### Example 4: Logistic regression ####
n <- 80;
betas <- c(1, 1/2, 1/3, 1/4, 1/5, 1/6, 0);
rho <- c(0, 0.5, 0.9);
sd <- c(NA, NA, NA);
example4 <- plotSimulationLogisticRegression(betas = betas, n = n, rho = rho, sd = sd, 
                            nreps= nreps, limitAxis = 7) 
example4
#save(example4, file = "plots/example4.RData")

#### Example 4_1: Logistic regression #
n <- 5000;
betas <- c(1, 1/2, 1/3, 1/4, 1/5, 1/6, 0);
rho <- c(0, 0.5, 0.9);
sd <- c(NA, NA, NA);
example4_1 <- plotSimulationLogisticRegression(betas = betas, n = n, rho = rho, sd = sd, 
                                             nreps= nreps, limitAxis = 7) 
example4_1
save(example4_1, file = "plots/example4_1.RData")


#### Example 5: Logistic regression ####
n <- 100;
betas <- c(4, 4, 4, -6*sqrt(2), 4/3, rep(0, times = 195));
rho <- c(0, 0.5, 0.9);
sd <- c(NA, NA, NA);
example5 <- plotSimulationLogisticRegression(betas = betas, n = n, rho = rho, sd = sd, 
                              nreps= nreps, limitAxis = 12) 
example5
#save(example5, file = "plots/example5.RData")

#### Example 6: logistic regression ####
n <- 250;
betas <- c(2, 3, 0, 0, 3/2, rep(0, times = 295));
rho <- c(0, 0.5, 0.9);
sd <- c(NA, NA, NA);
example6 <- plotSimulationLogisticRegression(betas = betas, n = n, rho = rho, sd = sd, 
                                 nreps= nreps, limitAxis = 20) 
example6
#save(example6, file = "plots/example6.RData")

