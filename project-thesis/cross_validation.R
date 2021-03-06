source("candidate-models.R");
source("rep_soil.R");
require(SOIL);

set.seed(456);

#### Linear Regression: BGS boys ####
load("data/BGSboys.rda");
y <- as.vector(BGSboys$HT18);
x <- as.matrix(BGSboys[, -c(8)]);
candidate_models <- candidateModels(x, y, family = "gaussian"); # A = { A_lasso, A_scad, A_mcp }
#candidate_models <- t(SOIL(x, y, weight_type = "ARM")$candidate_models_cleaned) # A = { A_lasso }
candidate_models
# ARM
BGS_rep_arm <- round(rep_SOIL(X = x, y = y, weight_type = "ARM")$soil_importance, 3);
BGS_soil_arm <- round(SOIL(x, y, weight_type = "ARM", method = "customize", candidate_models = t(candidate_models))$importance, 3);

# BIC
BGS_rep_bic <- round(rep_SOIL(X = x, y = y, weight_type = "BIC")$soil_importance, 3);
BGS_soil_bic <- round(SOIL(x, y, weight_type = "BIC", method = "customize", candidate_models = t(candidate_models))$importance, 3);

BGS_rep_arm <- matrix(BGS_rep_arm, nrow = 1);
BGS_soil_arm<- matrix(BGS_soil_arm, nrow = 1);
BGS_rep_bic <- matrix(BGS_rep_bic, nrow = 1);
BGS_soil_bic <- matrix(BGS_soil_bic, nrow = 1);
colnames(BGS_rep_arm) <- colnames(BGS_soil_arm) <- colnames(BGS_rep_bic) <- colnames(BGS_soil_bic) <- colnames(x);
sort(BGS_rep_arm[ ,which(as.vector(BGS_rep_arm) > 0)], decreasing = TRUE);
sort(BGS_soil_arm[ ,which(as.vector(BGS_soil_arm) > 0)], decreasing = TRUE);
sort(BGS_rep_bic[ ,which(as.vector(BGS_rep_bic) > 0)], decreasing = TRUE);
sort(BGS_soil_bic[ ,which(as.vector(BGS_soil_bic) > 0)], decreasing = TRUE);



#### Linear Regression: Bardet ####
load("data/Bardet.rda");
candidate_models <- candidateModels(x, y, family = "gaussian"); # A = { A_lasso, A_scad, A_mcp }
#candidate_models <- t(SOIL(x, y, weight_type = "ARM")$candidate_models_cleaned) # A = { A_lasso } #, customize = TRUE, candidate_models = candidate_models
# ARM
BARDET_rep_arm <- round(rep_SOIL(X = x, y = y, weight_type = "ARM")$soil_importance, 3);
BARDET_soil_arm <- round(SOIL(x, y, weight_type = "ARM", method = "customize", candidate_models = t(candidate_models))$importance, 3);

# BIC
BARDET_rep_bic <- round(rep_SOIL(X = x, y = y, weight_type = "BIC")$soil_importance, 3);
BARDET_soil_bic <- round(SOIL(x, y, weight_type = "BIC", method = "customize", candidate_models = t(candidate_models))$importance, 3);

BARDET_rep_arm <- matrix(BARDET_rep_arm, nrow = 1);
BARDET_soil_arm <- matrix(BARDET_soil_arm, nrow = 1);
BARDET_rep_bic <- matrix(BARDET_rep_bic, nrow = 1);
BARDET_soil_bic <- matrix(BARDET_soil_bic, nrow = 1);
colnames(BARDET_rep_arm) <- colnames(BARDET_soil_arm) <- colnames(BARDET_rep_bic) <- colnames(BARDET_soil_bic) <- colnames(x);
sort(BARDET_rep_arm[ ,which(as.vector(BARDET_rep_arm) > 0)], decreasing = TRUE);
sort(BARDET_soil_arm[ ,which(as.vector(BARDET_soil_arm) > 0)], decreasing = TRUE);
sort(BARDET_rep_bic[ ,which(as.vector(BARDET_rep_bic) > 0)], decreasing = TRUE);
sort(BARDET_soil_bic[ ,which(as.vector(BARDET_soil_bic) > 0)], decreasing = TRUE);



#### Logistic regression: Lung cancer ####
load("data/Lung.rda");
x <- t(Lung_Boston_x[,-c(1,2)]);
gene_names <- Lung_Boston_x$NAME;
colnames(x) <- gene_names;
y <- numeric(length(Lung_Boston_y));
for (i in 1:length(y)) {
  ifelse(Lung_Boston_y[i] == "A", y[i] <- 0, y[i] <- 1);
}
candidate_models <- candidateModels(x, y, family = "binomial"); # A = { A_lasso, A_scad, A_mcp }

#ARM
LUNG_rep_arm <- round(rep_SOIL(X = x, y = y, weight_type = "ARM", family = "binomial")$soil_importance, 6);
LUNG_soil_arm <- round(SOIL(x, y, weight_type = "ARM", method = "customize", family = "binomial", candidate_models = t(candidate_models))$importance, 6);

# BIC
LUNG_rep_bic <- round(rep_SOIL(X = x, y = y, weight_type = "BIC", family = "binomial")$soil_importance, 6);
LUNG_soil_bic <- round(SOIL(x, y, weight_type = "BIC", method = "customize", family = "binomial", candidate_models = t(candidate_models))$importance, 6);

LUNG_rep_arm <- matrix(LUNG_rep_arm, nrow = 1);
LUNG_soil_arm <- matrix(LUNG_soil_arm, nrow = 1);
LUNG_rep_bic <- matrix(LUNG_rep_bic, nrow = 1);
LUNG_soil_bic <- matrix(LUNG_soil_bic, nrow = 1);
colnames(LUNG_rep_arm) <- colnames(LUNG_soil_arm) <- colnames(LUNG_rep_bic) <- colnames(LUNG_soil_bic) <- colnames(x);
sort(LUNG_rep_arm[ ,which(as.vector(LUNG_rep_arm) > 0)], decreasing = TRUE);
sort(LUNG_soil_arm[ ,which(as.vector(LUNG_soil_arm) > 0)], decreasing = TRUE);
sort(LUNG_rep_bic[ ,which(as.vector(LUNG_rep_bic) > 0)], decreasing = TRUE);
sort(LUNG_soil_bic[ ,which(as.vector(LUNG_soil_bic) > 0)], decreasing = TRUE)





