source("simulation_linear-regression_charts.R");
source("simulation_logistic-regression_charts.R");

set.seed(456);
nreps <- 100;

#### Example 1: Linear regression ####
n <- 100;
betas <-  c(4, 4, 4, -6*sqrt(2), 4/3, rep(0, times = 995));
rho <- c(0, 0.9, 0, 0.9);
sd <- c(0.1, 0.1, 5, 5);
example1 <- plotSimulationLinearRegression(betas = betas, n = n, rho = rho, sd = sd, nreps = nreps, limitAxis = 20);
save(example1, file = "new_plots_100/example1.RData")

#### Example 2: Linear regression ####
n <- 100;
betas <-  c(4, 4, 4, -6*sqrt(2), 4/3, rep(0, times = 995));
rho <- c(0.3, 0.7, 0.3, 0.7);
sd <- c(1.5, 1.5, 3.5, 3.5);
example2 <- plotSimulationLinearRegression(betas = betas, n = n, rho = rho, sd = sd, nreps = nreps, limitAxis = 20);
save(example2, file = "new_plots_100/example2.RData")

#### Example 3: Linear Regression ####
n <- 150;
betas <-  c(4, 4, 4, -6*sqrt(2), 4/3, rep(0, times = 9));
rho <- c(0, 0.9, 0, 0.9);
sd <- c(0.1, 0.1, 5, 5);
example3 <- plotSimulationLinearRegression(betas = betas, n = n, rho = rho, sd = sd, nreps = nreps, limitAxis = 15, noise = TRUE);
save(example3, file = "new_plots_100/example3.RData")

#### Example 4: Linear Regression ####
n <- 150;
betas <-  c(4, 4, 4, -6*sqrt(2), 4/3, 0, 4, 0, 1, rep(0, times=3));
rho <- c(0, 0.9, 0, 0.9);
sd <- c(0.1, 0.1, 5, 5);
example4 <- plotSimulationLinearRegression(betas = betas, n = n, rho = rho, sd = sd, nreps = nreps, limitAxis = 12, quad = TRUE);
save(example4, file = "new_plots_100/example4.RData")

#### Example 5: Linear Regression ####
n <- 150;
betas <-  c(rep(1, times = 8));
rho <- c(0, 0.9, 0, 0.9);
sd <- c(0.1, 0.1, 5, 5);
example5 <- plotSimulationLinearRegression(betas = betas, n = n, rho = rho, sd = sd, nreps = nreps, limitAxis = 8);
save(example5, file = "new_plots_100/example5.RData")

#### Example 6: Linear Regression ####
n <- 150;
betas <-  c(rep(1, times = 8));
rho <- c(0.3, 0.7, 0.3, 0.7);
sd <- c(1.5, 1.5, 3.5, 3.5);
example6 <- plotSimulationLinearRegression(betas = betas, n = n, rho = rho, sd = sd, nreps = nreps, limitAxis = 8);
save(example6, file = "new_plots_100/example6.RData")


#### Example 7: Logistic regression ####
n <- 80;
betas <- c(1, 1/2, 1/3, 1/4, 1/5, 1/6, 0);
rho <- c(0, 0.5, 0.9);
sd <- c(NA, NA, NA);
example7 <- plotSimulationLogisticRegression(betas = betas, n = n, rho = rho, sd = sd, nreps= nreps, limitAxis = 7)
save(example7, file = "new_plots_100/example7.RData")

#### Example 8: Logistic regression #
n <- 5000;
betas <- c(1, 1/2, 1/3, 1/4, 1/5, 1/6, 0);
rho <- c(0, 0.5, 0.9);
sd <- c(NA, NA, NA);
example8 <- plotSimulationLogisticRegression(betas = betas, n = n, rho = rho, sd = sd, nreps= nreps, limitAxis = 7) 
save(example8, file = "new_plots_100/example8.RData")


#### Example 9: Logistic regression ####
n <- 100;
betas <- c(4, 4, 4, -6*sqrt(2), 4/3, rep(0, times = 195));
rho <- c(0, 0.5, 0.9);
sd <- c(NA, NA, NA);
example9 <- plotSimulationLogisticRegression(betas = betas, n = n, rho = rho, sd = sd, nreps= nreps, limitAxis = 12) 
save(example9, file = "new_plots_100/example9.RData")

#### Example 10: logistic regression ####
n <- 250;
betas <- c(2, 3, 0, 0, 3/2, rep(0, times = 295));
rho <- c(0, 0.5, 0.9);
sd <- c(NA, NA, NA);
example10 <- plotSimulationLogisticRegression(betas = betas, n = n, rho = rho, sd = sd, nreps= nreps, limitAxis = 10) 
save(example10, file = "new_plots_100/example10.RData")


