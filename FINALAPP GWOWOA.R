rm(list=ls())
cat("\f")
#Data
x <- c(
  50.826, 10.910, 10.771, 9.783, 8.657, 10.277, 8.838, 9.591, 7.947, 7.786,
  11.741, 11.148, 7.724, 8.634, 11.643, 10.019, 9.219, 7.052, 9.607, 9.305,
  9.435, 5.467, 12.053, 7.925, 8.005, 9.408, 7.891, 6.419, 3.723, 4.556,
  4.319, 5.124, 6.864, 4.599, 6.971, 4.942, 4.624, 1.908, 12.422, 2.312,
  2.141, 2.527, 3.650, 6.917, 4.869, 3.727, 6.462, 3.161, 5.784, 4.800,
  8.059, 4.711, 4.673, 5.940, 5.136, 5.763, 5.501, 6.672, 8.336, 9.542,
  7.098, 6.193, 7.773, 7.262, 6.613, 7.557, 7.776, 7.725, 8.436, 11.413,
  8.607, 11.094, 12.137, 8.475, 9.474, 6.812, 6.263, 7.384, 7.478, 7.479,
  10.655, 11.611, 8.483, 7.073, 0.367, 17.767, 16.197, 6.728, 6.078, 5.362,
  4.403, 3.060, 2.452, 3.110, 3.511, 3.738, 4.653, 4.667, 15.439, 4.744,
  5.284, 7.283, 7.683, 6.922, 8.000, 7.347, 9.201, 15.046, 10.139, 12.389,
  15.043, 11.595, 10.480, 12.827, 12.228, 15.089, 13.421, 16.281, 16.254,
  14.622, 13.466, 13.294, 12.141, 7.705, 9.964, 9.567, 8.918, 9.398, 8.756,
  10.887, 10.277, 20.376, 10.995, 14.372, 14.466, 11.542, 8.923, 10.757,
  11.503, 11.978, 11.218, 11.554, 10.712, 26.162, 10.309, 10.664, 5.451,
  8.040324, 9.386873, 9.821567, 9.337263, 9.571083, 15.846828, 10.031089,
  10.342526, 9.470213, 12.585781, 9.612205, 10.139484, 8.537097, 7.171606,
  9.550920, 5.903382
)
y <- c(
  7.340, 7.210, 15.284, 4.471, 5.020, 7.297, 7.248, 8.705, 8.946, 7.205,
  11.300, 10.033, 9.210, 7.840, 19.598, 3.859, 4.789, 4.388, 4.311, 4.868,
  5.387, 3.868, 4.804, 5.200, 6.383, 9.081, 26.617, 2.827, 2.997, 5.414,
  4.898, 5.435, 6.616, 7.334, 5.833, 4.083, 5.244, 4.796, 14.922, 2.944,
  4.114, 4.630, 3.952, 8.272, 6.417, 4.131, 6.222, 4.518, 6.257, 4.675,
  10.936, 4.162, 4.656, 4.678, 4.482, 4.918, 5.029, 7.301, 9.859, 7.141,
  8.188, 6.930, 8.146, 4.274, 4.518, 4.251, 5.779, 6.455, 5.212, 11.099,
  6.148, 9.482, 5.941, 8.324, 9.390, 5.650, 5.790, 6.989, 6.200, 6.804,
  7.392, 9.546, 9.255, 8.822, 8.008, 10.594, 26.673, 5.133, 5.616, 6.628,
  5.379, 4.722, 3.876, 8.702, 5.629, 6.048, 6.131, 6.495, 11.722, 6.569,
  5.708, 5.167, 6.078, 7.611, 6.988, 7.641, 8.070, 7.741, 14.522, 10.824,
  15.932, 7.256, 7.120, 9.117, 8.269, 7.471, 9.960, 9.012, 11.354, 9.193,
  7.938, 3.066, 27.204, 6.427, 6.597, 9.645, 8.217, 8.467, 8.448, 7.042,
  10.350, 13.065, 12.386, 19.058, 32.734, 8.791, 7.771, 8.514, 12.066,
  10.684, 10.427, 15.595, 9.423, 11.607, 27.841, 13.711, 14.096,
  9.07557, 8.891798, 10.172064, 9.49242, 9.347404, 9.732957, 20.621147,
  10.144917, 12.49846, 15.558543, 11.392311, 14.300334, 8.876694,
  8.978493, 9.21688, 10.763631
)


yhat_ARDL <- c(
  NA, NA, NA, NA,
  6.267213957, 8.673324139, 8.313784315, 8.112503843,
  7.525642569, 6.791274868, 9.854712267, 10.26414042,
  7.039672685, 6.946230103, 9.897410344, 8.859450723,
  8.050569168, 6.729100824, 8.00219741, 9.022418119,
  8.438745354, 5.977131827, 9.266614482, 9.099714267,
  6.572959665, 8.516874995, 7.543243442, 5.20324375,
  4.548550671, 4.765504947, 5.432080691, 5.806371267,
  7.251748859, 5.916115871, 6.454537984, 6.277169343,
  5.050009266, 3.695038575, 9.935268734, 6.14799623,
  1.629323919, 4.221640411, 4.825684355, 7.520130935,
  6.497357934, 4.517198335, 6.55077843, 5.152631462,
  5.562843045, 6.285925268, 7.550618822, 6.185192706,
  4.791340167, 6.397626482, 6.115652712, 6.147207029,
  6.289190362, 6.79647176, 8.142030927, 8.904295556,
  7.314068184, 5.72869713, 7.123729404, 7.325686115,
  6.670508768, 7.254527732, 7.746876505, 7.490959668,
  7.867461276, 10.01314771, 8.446477761, 8.884779274,
  10.63191508, 7.983737354, 7.453194877, 6.705004086,
  5.64605758, 7.006279499, 7.415637334, 7.301906329,
  9.32547128, 10.64536541, 7.955085997, 6.020419567,
  1.973452311, 12.08907552, 16.90695773, 5.48339045,
  4.175343165, 5.258750697, 4.751490495, 4.219882716,
  3.798471701, 4.486864336, 4.881945223, 5.163765316,
  5.70975968, 5.851238142, 12.61689413, 7.97453498,
  3.319023211, 7.271794637, 7.666966859, 7.104096822,
  7.40931515, 7.383074771, 8.135493378, 12.5438229,
  10.28481611, 8.821026339, 12.32594739, 9.787695602,
  8.126815701, 10.12517504, 10.43186821, 11.65190641,
  11.35240443, 12.05323961, 13.08404913, 11.18636591,
  10.15616285, 10.11346478, 9.62816423, 6.596017461,
  7.466863, 8.819748382, 7.782490903, 8.211260604,
  7.973541399, 9.123208487, 9.359162936, 15.25306451,
  11.44104182, 9.018453888, 12.19472535, 9.103438592,
  7.099016872, 8.353423503, 9.898839864, 10.00405697,
  9.503540531, 9.371979682, 9.06448922, 18.8561575,
  12.01799283, 4.963031629, 5.692402013, 5.666821183,
  8.998856205, 8.872436721, 8.48698255, 8.325644294,
  12.54528746, 10.00367907, 7.400643883, 8.36335071,
  9.917757199, 9.071857508, 7.975786731, 7.828145622,
  6.359142406, 8.139631082, 6.58942063
)

length(yhat_ARDL)





# ==============================
# Data Monthly
# ==============================

X_ts <- ts(x, start = c(2012, 10), frequency = 12)
Y_ts <- ts(y, start = c(2012, 10), frequency = 12)

# تحويل البيانات إلى مصفوفة سنوية شهرية
# كل صف يمثل سنة تقريبًا، وكل عمود يمثل شهرًا
date <- seq(as.Date("2012-10-01"),
            as.Date("2026-04-01"),
            by = "month")


stopifnot(
  length(x) == length(y),
  length(y) == length(yhat_ARDL),
  length(yhat_ARDL) == length(date)
)


data <- data.frame(
  Date = date,
  Revenues = x,
  Public_Expenditure = y,
  Yhat_ARDL = yhat_ARDL
)

head(data)
tail(data)

length(x)
length(y)
length(yhat_ARDL)
length(date)
# ==============================
# Descriptive Statistics
# ==============================

DesStatFun <- function(z){
  Res <- NULL
  Res[1] <- min(z, na.rm = TRUE)
  Res[2] <- median(z, na.rm = TRUE)
  Res[3] <- max(z, na.rm = TRUE)
  Res[4] <- mean(z, na.rm = TRUE)
  Res[5] <- sd(z, na.rm = TRUE)
  return(Res)
}

DesStatRes <- matrix(0, 2, 5)

DesStatRes[1,] <- DesStatFun(x)
DesStatRes[2,] <- DesStatFun(y)

rownames(DesStatRes) <- c("Revenues", "Public Expenditure")
colnames(DesStatRes) <- c("Min", "Median", "Max", "Mean", "SD")

DesStatRes

# ==============================
# Plots
# ==============================

windowsFonts(Times = windowsFont("Times New Roman"))

par(
  family = "Times",
  cex.main = 1.6,
  cex.lab = 1.3,
  cex.axis = 1.1,
  font.main = 2,
  font.lab = 2,
  mar = c(5, 5, 4, 2)
)

plot(
  X_ts,
  type = "l",
  lwd = 2.5,
  col = "#1B4F72",
  xlab = "Time (Monthly)",
  ylab = "Revenues",
  main = "Time Series Plot of Revenues"
)

grid(col = "gray85", lty = "dotted")

plot(
  Y_ts,
  type = "l",
  lwd = 2.5,
  col = "#800020",
  xlab = "Time (Monthly)",
  ylab = "Public Expenditure",
  main = "Time Series Plot of Public Expenditure"
)

grid(col = "gray85", lty = "dotted")

# ==============================
# Export to clipboard
# ==============================

write.excel <- function(x, row.names = FALSE, col.names = FALSE, ...) {
  write.table(
    x,
    "clipboard",
    sep = "\t",
    row.names = row.names,
    col.names = col.names,
    ...
  )
}

# ==============================
# Step 1: Split original data
# ==============================

train_size <- 114
valid_size <- 37
test_size  <- 12

# التأكد أن العدد الكلي كافٍ
stopifnot(nrow(data) >= train_size + valid_size + test_size)

# Training
train_data <- data[1:train_size, ]

# Validation
valid_data <- data[(train_size + 1):
                     (train_size + valid_size), ]

# Testing
test_data <- data[(train_size + valid_size + 1):
                    (train_size + valid_size + test_size), ]

# Check
cat("Training:", nrow(train_data), "\n")
cat("Validation:", nrow(valid_data), "\n")
cat("Testing:", nrow(test_data), "\n")

range(train_data$Date)
range(valid_data$Date)
range(test_data$Date)


# ==============================
# Step 2: Create ARDL(1,4) Data
# ==============================

library(dplyr)

max_lag <- 4

full_ardl <- data %>%
  mutate(
    Y_lag1 = lag(Public_Expenditure, 1),
    
    X_lag1 = lag(Revenues, 1),
    X_lag2 = lag(Revenues, 2),
    X_lag3 = lag(Revenues, 3),
    X_lag4 = lag(Revenues, 4)
  ) %>%
  na.omit()

# تقسيم البيانات بعد حذف أول 4 مشاهدات
train_ardl <- full_ardl[1:(train_size - max_lag), ]

valid_ardl <- full_ardl[
  (train_size - max_lag + 1):
    (train_size - max_lag + valid_size), ]

test_ardl <- full_ardl[
  (train_size - max_lag + valid_size + 1):
    (train_size - max_lag + valid_size + test_size), ]

# فحص الأحجام
nrow(train_ardl)
nrow(valid_ardl)
nrow(test_ardl)

range(train_ardl$Date)
range(valid_ardl$Date)
range(test_ardl$Date)


# ==============================
# Step 3: Initial Parameters
# ARDL(1,4) from EViews
# ==============================

theta0 <- c(
  C     = 3.045187,
  phi1  = -0.046498,
  beta0 = 0.651740,
  beta1 = 0.240804,
  beta2 = -0.245026,
  beta3 = -0.013001,
  beta4 = -0.035154
)

length(theta0)
theta0


# ==============================
# Step 4: ARDL(1,4) Prediction Function
# ==============================

ardl_predict <- function(theta, data_ardl){
  
  theta <- as.numeric(theta)
  
  yhat <- theta[1] +
    theta[2] * data_ardl$Y_lag1 +
    theta[3] * data_ardl$Revenues +
    theta[4] * data_ardl$X_lag1 +
    theta[5] * data_ardl$X_lag2 +
    theta[6] * data_ardl$X_lag3 +
    theta[7] * data_ardl$X_lag4
  
  return(as.numeric(yhat))
}

# فحص الدالة
exists("ardl_predict")

# اختبار سريع للتنبؤ
yhat_train_OLS <- ardl_predict(theta0, train_ardl)

length(yhat_train_OLS)
head(yhat_train_OLS)

# ==============================
# Step 4: Search Bounds
# ±150% حول معاملات OLS
# ==============================

lower_bound <- theta0 - 0.9 * abs(theta0)
upper_bound <- theta0 + 0.9 * abs(theta0)

lower_bound
upper_bound



# ==============================
# Step 5: Evaluate EViews Parameters
# Train - Validation - Test
# ==============================

# ---------- Training ----------
yhat_train_OLS <- ardl_predict(theta0, train_ardl)
error_train_OLS <- train_ardl$Public_Expenditure - yhat_train_OLS

MSE_OLS_train  <- mean(error_train_OLS^2, na.rm = TRUE)
RMSE_OLS_train <- sqrt(MSE_OLS_train)
MAE_OLS_train  <- mean(abs(error_train_OLS), na.rm = TRUE)

# ---------- Validation ----------
yhat_valid_OLS <- ardl_predict(theta0, valid_ardl)
error_valid_OLS <- valid_ardl$Public_Expenditure - yhat_valid_OLS

MSE_OLS_valid  <- mean(error_valid_OLS^2, na.rm = TRUE)
RMSE_OLS_valid <- sqrt(MSE_OLS_valid)
MAE_OLS_valid  <- mean(abs(error_valid_OLS), na.rm = TRUE)

# ---------- Testing ----------
yhat_test_OLS <- ardl_predict(theta0, test_ardl)
error_test_OLS <- test_ardl$Public_Expenditure - yhat_test_OLS

MSE_OLS_test  <- mean(error_test_OLS^2, na.rm = TRUE)
RMSE_OLS_test <- sqrt(MSE_OLS_test)
MAE_OLS_test  <- mean(abs(error_test_OLS), na.rm = TRUE)

# ---------- Results ----------
OLS_results <- data.frame(
  Sample = c("Training", "Validation", "Testing"),
  MSE  = c(MSE_OLS_train, MSE_OLS_valid, MSE_OLS_test),
  RMSE = c(RMSE_OLS_train, RMSE_OLS_valid, RMSE_OLS_test),
  MAE  = c(MAE_OLS_train, MAE_OLS_valid, MAE_OLS_test)
)
OLS_results[, -1] <- round(OLS_results[, -1], 4)
print(OLS_results)

# ==========================================================
# Step 6: Objective Function
# Huber Loss on Training + Validation
# ==========================================================

# أخطاء OLS على التدريب والتحقق لحساب delta ثابت
error_OLS_train <- train_ardl$Public_Expenditure -
  ardl_predict(theta0, train_ardl)

error_OLS_valid <- valid_ardl$Public_Expenditure -
  ardl_predict(theta0, valid_ardl)

error_OLS_tv <- c(error_OLS_train, error_OLS_valid)

delta_huber <- 1.345 * mad(error_OLS_tv, na.rm = TRUE)

if(is.na(delta_huber) || delta_huber <= 0){
  delta_huber <- 1
}

# دالة Huber لمجموعة واحدة
huber_mean <- function(actual, predicted, delta){
  
  error <- actual - predicted
  
  loss <- ifelse(
    abs(error) <= delta,
    0.5 * error^2,
    delta * (abs(error) - 0.5 * delta)
  )
  
  mean(loss, na.rm = TRUE)
}

# دالة الهدف النهائية
objective_huber_tv <- function(theta){
  
  theta <- as.numeric(theta)
  
  # Training
  yhat_train <- ardl_predict(theta, train_ardl)
  huber_train <- huber_mean(
    train_ardl$Public_Expenditure,
    yhat_train,
    delta_huber
  )
  
  # Validation
  yhat_valid <- ardl_predict(theta, valid_ardl)
  huber_valid <- huber_mean(
    valid_ardl$Public_Expenditure,
    yhat_valid,
    delta_huber
  )
  
  # الأوزان
  w_train <- 0.20
  w_valid <- 0.80
  
  # عقوبة Ridge حول معاملات OLS
  lambda <- 0.1
  penalty <- lambda * sum((theta - as.numeric(theta0))^2)
  
  obj <- w_train * huber_train +
    w_valid * huber_valid +
    penalty
  
  if(is.na(obj) || is.nan(obj) || is.infinite(obj)){
    obj <- 1e10
  }
  
  return(obj)
}

# اختبار الدالة
objective_huber_tv(theta0)
objective_huber_tv(unname(theta0))




# ==========================================================
# Step 7A: Tuning Metaheuristic Settings
# ==========================================================

library(metaheuristicOpt)

Seed <- 10

numVar <- length(theta0)

stopifnot(numVar == 7)
stopifnot(length(lower_bound) == numVar)
stopifnot(length(upper_bound) == numVar)

rangeVar <- rbind(
  as.numeric(lower_bound),
  as.numeric(upper_bound)
)

stopifnot(ncol(rangeVar) == numVar)

population_grid <- c(100,150,200)
iteration_grid  <- c(300,500,1000)

tune_results <- data.frame()

for(alg in c("GWO", "WOA")){
  
  for(pop in population_grid){
    
    for(iter in iteration_grid){
      
      set.seed(Seed)
      
      res_tmp <- metaOpt(
        FUN        = objective_huber_tv,
        optimType  = "MIN",
        algorithm  = alg,
        numVar     = numVar,
        rangeVar   = rangeVar,
        control = list(
          numPopulation = pop,
          maxIter       = iter
        ),
        seed = Seed
      )
      
      tune_results <- rbind(
        tune_results,
        data.frame(
          Algorithm        = alg,
          Population       = pop,
          MaxIter          = iter,
          Best_Huber_Valid = as.numeric(res_tmp$optimumValue)
        )
      )
      
      cat("Algorithm:", alg,
          "| Population:", pop,
          "| Iter:", iter,
          "| Huber Loss:", as.numeric(res_tmp$optimumValue), "\n")
    }
  }
}

tune_results <- tune_results[order(tune_results$Best_Huber_Valid), ]

print(tune_results)


# ==========================================================
# Step 7B: Select Best Settings for Each Algorithm
# ==========================================================

best_GWO_setting <- tune_results[tune_results$Algorithm == "GWO", ][1, ]
best_WOA_setting <- tune_results[tune_results$Algorithm == "WOA", ][1, ]

best_GWO_setting
best_WOA_setting


# ==========================================================
# Step 7C: Run GWO with Best Settings
# ==========================================================

set.seed(Seed)

res_GWO <- metaOpt(
  FUN       = objective_huber_tv,
  optimType = "MIN",
  algorithm = "GWO",
  numVar    = numVar,
  rangeVar  = rangeVar,
  control = list(
    numPopulation = best_GWO_setting$Population,
    maxIter       = best_GWO_setting$MaxIter
  ),
  seed = Seed
)


# ==========================================================
# Step 7D: Run WOA with Best Settings
# ==========================================================

set.seed(Seed)

res_WOA <- metaOpt(
  FUN       = objective_huber_tv,
  optimType = "MIN",
  algorithm = "WOA",
  numVar    = numVar,
  rangeVar  = rangeVar,
  control = list(
    numPopulation = best_WOA_setting$Population,
    maxIter       = best_WOA_setting$MaxIter
  ),
  seed = Seed
)


# ==============================
# Best Parameters
# ==============================

theta_GWO <- as.numeric(res_GWO$result)
theta_WOA <- as.numeric(res_WOA$result)

names(theta_GWO) <- names(theta0)
names(theta_WOA) <- names(theta0)

theta_GWO
theta_WOA






# ==============================
# Best Objective Function
# ==============================

Best_Huber_GWO_valid <- as.numeric(res_GWO$optimumValue)
Best_Huber_WOA_valid <- as.numeric(res_WOA$optimumValue)

cat("Best Validation Huber Objective (GWO):", Best_Huber_GWO_valid, "\n")
cat("Best Validation Huber Objective (WOA):", Best_Huber_WOA_valid, "\n")

# ==========================================================
# Evaluate Models: OLS, GWO, WOA
# Train - Validation - Test
# ==========================================================

calc_metrics <- function(actual, predicted){
  error <- actual - predicted
  
  MSE  <- mean(error^2, na.rm = TRUE)
  RMSE <- sqrt(MSE)
  MAE  <- mean(abs(error), na.rm = TRUE)
  
  return(c(MSE = MSE, RMSE = RMSE, MAE = MAE))
}

# ==============================
# Predictions
# ==============================

# OLS
yhat_train_OLS <- ardl_predict(theta0, train_ardl)
yhat_valid_OLS <- ardl_predict(theta0, valid_ardl)
yhat_test_OLS  <- ardl_predict(theta0, test_ardl)

# GWO
yhat_train_GWO <- ardl_predict(theta_GWO, train_ardl)
yhat_valid_GWO <- ardl_predict(theta_GWO, valid_ardl)
yhat_test_GWO  <- ardl_predict(theta_GWO, test_ardl)

# WOA
yhat_train_WOA <- ardl_predict(theta_WOA, train_ardl)
yhat_valid_WOA <- ardl_predict(theta_WOA, valid_ardl)
yhat_test_WOA  <- ardl_predict(theta_WOA, test_ardl)

# ==============================
# Check lengths
# ==============================

c(
  OLS_Train = length(yhat_train_OLS),
  OLS_Valid = length(yhat_valid_OLS),
  OLS_Test  = length(yhat_test_OLS),
  GWO_Train = length(yhat_train_GWO),
  GWO_Valid = length(yhat_valid_GWO),
  GWO_Test  = length(yhat_test_GWO),
  WOA_Train = length(yhat_train_WOA),
  WOA_Valid = length(yhat_valid_WOA),
  WOA_Test  = length(yhat_test_WOA)
)

# ==============================
# Metrics
# ==============================

metrics_results <- rbind(
  OLS_Train = calc_metrics(train_ardl$Public_Expenditure, yhat_train_OLS),
  OLS_Valid = calc_metrics(valid_ardl$Public_Expenditure, yhat_valid_OLS),
  OLS_Test  = calc_metrics(test_ardl$Public_Expenditure,  yhat_test_OLS),
  
  GWO_Train = calc_metrics(train_ardl$Public_Expenditure, yhat_train_GWO),
  GWO_Valid = calc_metrics(valid_ardl$Public_Expenditure, yhat_valid_GWO),
  GWO_Test  = calc_metrics(test_ardl$Public_Expenditure,  yhat_test_GWO),
  
  WOA_Train = calc_metrics(train_ardl$Public_Expenditure, yhat_train_WOA),
  WOA_Valid = calc_metrics(valid_ardl$Public_Expenditure, yhat_valid_WOA),
  WOA_Test  = calc_metrics(test_ardl$Public_Expenditure,  yhat_test_WOA)
)

print(round(metrics_results, 4))

# ==============================
# Calculate Metrics
# ==============================

OLS_train <- calc_metrics(train_ardl$Public_Expenditure, yhat_train_OLS)
OLS_valid <- calc_metrics(valid_ardl$Public_Expenditure, yhat_valid_OLS)
OLS_test  <- calc_metrics(test_ardl$Public_Expenditure,  yhat_test_OLS)

GWO_train <- calc_metrics(train_ardl$Public_Expenditure, yhat_train_GWO)
GWO_valid <- calc_metrics(valid_ardl$Public_Expenditure, yhat_valid_GWO)
GWO_test  <- calc_metrics(test_ardl$Public_Expenditure,  yhat_test_GWO)

WOA_train <- calc_metrics(train_ardl$Public_Expenditure, yhat_train_WOA)
WOA_valid <- calc_metrics(valid_ardl$Public_Expenditure, yhat_valid_WOA)
WOA_test  <- calc_metrics(test_ardl$Public_Expenditure,  yhat_test_WOA)




# ==============================
# Results Table
# ==============================

Results <- data.frame(
  Method = c("ARDL-OLS", "ARDL-GWO", "ARDL-WOA"),
  
  Train_MSE  = c(OLS_train["MSE"],  GWO_train["MSE"],  WOA_train["MSE"]),
  Train_RMSE = c(OLS_train["RMSE"], GWO_train["RMSE"], WOA_train["RMSE"]),
  Train_MAE  = c(OLS_train["MAE"],  GWO_train["MAE"],  WOA_train["MAE"]),
  
  Valid_MSE  = c(OLS_valid["MSE"],  GWO_valid["MSE"],  WOA_valid["MSE"]),
  Valid_RMSE = c(OLS_valid["RMSE"], GWO_valid["RMSE"], WOA_valid["RMSE"]),
  Valid_MAE  = c(OLS_valid["MAE"],  GWO_valid["MAE"],  WOA_valid["MAE"]),
  
  Test_MSE   = c(OLS_test["MSE"],   GWO_test["MSE"],   WOA_test["MSE"]),
  Test_RMSE  = c(OLS_test["RMSE"],  GWO_test["RMSE"],  WOA_test["RMSE"]),
  Test_MAE   = c(OLS_test["MAE"],   GWO_test["MAE"],   WOA_test["MAE"]),
  
  row.names = NULL
)

Results[, -1] <- round(Results[, -1], 4)

print(Results)




# =====================================
# Percentage Improvement over OLS
# =====================================

Improve <- data.frame(
  Method = c("ARDL-GWO", "ARDL-WOA"),
  
  Train_MSE = c(
    (OLS_train["MSE"] - GWO_train["MSE"]) / OLS_train["MSE"] * 100,
    (OLS_train["MSE"] - WOA_train["MSE"]) / OLS_train["MSE"] * 100
  ),
  
  Train_RMSE = c(
    (OLS_train["RMSE"] - GWO_train["RMSE"]) / OLS_train["RMSE"] * 100,
    (OLS_train["RMSE"] - WOA_train["RMSE"]) / OLS_train["RMSE"] * 100
  ),
  
  Train_MAE = c(
    (OLS_train["MAE"] - GWO_train["MAE"]) / OLS_train["MAE"] * 100,
    (OLS_train["MAE"] - WOA_train["MAE"]) / OLS_train["MAE"] * 100
  ),
  
  Valid_MSE = c(
    (OLS_valid["MSE"] - GWO_valid["MSE"]) / OLS_valid["MSE"] * 100,
    (OLS_valid["MSE"] - WOA_valid["MSE"]) / OLS_valid["MSE"] * 100
  ),
  
  Valid_RMSE = c(
    (OLS_valid["RMSE"] - GWO_valid["RMSE"]) / OLS_valid["RMSE"] * 100,
    (OLS_valid["RMSE"] - WOA_valid["RMSE"]) / OLS_valid["RMSE"] * 100
  ),
  
  Valid_MAE = c(
    (OLS_valid["MAE"] - GWO_valid["MAE"]) / OLS_valid["MAE"] * 100,
    (OLS_valid["MAE"] - WOA_valid["MAE"]) / OLS_valid["MAE"] * 100
  ),
  
  Test_MSE = c(
    (OLS_test["MSE"] - GWO_test["MSE"]) / OLS_test["MSE"] * 100,
    (OLS_test["MSE"] - WOA_test["MSE"]) / OLS_test["MSE"] * 100
  ),
  
  Test_RMSE = c(
    (OLS_test["RMSE"] - GWO_test["RMSE"]) / OLS_test["RMSE"] * 100,
    (OLS_test["RMSE"] - WOA_test["RMSE"]) / OLS_test["RMSE"] * 100
  ),
  
  Test_MAE = c(
    (OLS_test["MAE"] - GWO_test["MAE"]) / OLS_test["MAE"] * 100,
    (OLS_test["MAE"] - WOA_test["MAE"]) / OLS_test["MAE"] * 100
  ),
  
  row.names = NULL
)

Improve[, -1] <- round(Improve[, -1], 2)

print(Improve)

# ==========================================================
# Actual vs Fitted/Forecasted Plots
# Three Models - Vertical Layout (One Below Another)
# ==========================================================

test_start <- min(test_ardl$Date)

plot_model <- function(dates_train, y_train, yhat_train,
                       dates_test, y_test, yhat_test,
                       model_name, pred_col, line_col){
  
  plot_dates <- c(dates_train, dates_test)
  actual_all <- c(y_train, y_test)
  yhat_all   <- c(yhat_train, yhat_test)
  
  ylim_range <- range(c(actual_all, yhat_all), na.rm = TRUE)
  ylim_range <- c(
    ylim_range[1] - 0.08 * diff(ylim_range),
    ylim_range[2] + 0.12 * diff(ylim_range)
  )
  
  plot(
    plot_dates, actual_all,
    type = "n",
    ylim = ylim_range,
    xlab = "",
    ylab = "Public Expenditure",
    main = model_name,
    family = "Times",
    font.main = 2,
    cex.main = 1.4,
    cex.lab = 1.15,
    cex.axis = 1,
    bty = "l"
  )
  
  usr <- par("usr")
  
  rect(
    xleft = test_start,
    ybottom = usr[3],
    xright = max(plot_dates),
    ytop = usr[4],
    col = adjustcolor("#FFF3E0", alpha.f = 0.65),
    border = NA
  )
  
  grid(col = "gray85", lty = "dotted")
  
  lines(plot_dates, actual_all, col = "black", lwd = 2.5)
  lines(plot_dates, yhat_all, col = line_col, lwd = 2.5)
  
  abline(v = test_start, col = "blue", lty = 3, lwd = 2.3)
  
  legend(
    "topleft",
    legend = c("Actual", "Fitted / Forecasted", "Start of Test"),
    col = c("black", line_col, "blue"),
    lty = c(1, 1, 3),
    lwd = c(2.5, 2.5, 2.3),
    bty = "n",
    cex = 0.85
  )
  
  box()
}

graphics.off()

# تغيير layout إلى 3 صفوف وعمود واحد (عمودي)
par(
  mfrow = c(3, 1),
  family = "Times",
  mar = c(4.3, 4.5, 3.2, 1.5),
  oma = c(0, 0, 3, 0),
  bg = "white"
)

# ARDL-OLS - Red/Burgundy
plot_model(
  train_ardl$Date, train_ardl$Public_Expenditure, yhat_train_OLS,
  test_ardl$Date, test_ardl$Public_Expenditure, yhat_test_OLS,
  "ARDL-OLS",
  pred_col = "#E11D48",
  line_col = "#E11D48"
)

# ARDL-GWO - Orange
plot_model(
  train_ardl$Date, train_ardl$Public_Expenditure, yhat_train_GWO,
  test_ardl$Date, test_ardl$Public_Expenditure, yhat_test_GWO,
  "ARDL-GWO",
  pred_col = "#F97316",
  line_col = "#F97316"
)

# ARDL-WOA - Green
plot_model(
  train_ardl$Date, train_ardl$Public_Expenditure, yhat_train_WOA,
  test_ardl$Date, test_ardl$Public_Expenditure, yhat_test_WOA,
  "ARDL-WOA",
  pred_col = "#059669",
  line_col = "#059669"
)




# ==========================================================
# Directional Accuracy (DA) - Testing Sample Only
# ==========================================================

directional_accuracy <- function(actual, predicted){
  
  actual_direction    <- sign(diff(actual))
  predicted_direction <- sign(diff(predicted))
  
  DA <- mean(actual_direction == predicted_direction) * 100
  
  return(round(DA, 2))
}

# ==============================
# Calculate DA
# ==============================

DA_OLS <- directional_accuracy(
  test_ardl$Public_Expenditure,
  yhat_test_OLS
)

DA_GWO <- directional_accuracy(
  test_ardl$Public_Expenditure,
  yhat_test_GWO
)

DA_WOA <- directional_accuracy(
  test_ardl$Public_Expenditure,
  yhat_test_WOA
)

# ==============================
# Results Table
# ==============================

DA_Test <- data.frame(
  Model = c("ARDL-OLS", "ARDL-GWO", "ARDL-WOA"),
  Directional_Accuracy = c(
    DA_OLS,
    DA_GWO,
    DA_WOA
  ),
  row.names = NULL
)


# ==========================================================
# Diebold-Mariano Test (Testing Sample Only)
# ==========================================================

library(forecast)

# أخطاء التنبؤ في عينة الاختبار
e_OLS <- test_ardl$Public_Expenditure - yhat_test_OLS
e_GWO <- test_ardl$Public_Expenditure - yhat_test_GWO
e_WOA <- test_ardl$Public_Expenditure - yhat_test_WOA

# ARDL-OLS vs ARDL-GWO
DM_OLS_GWO <- dm.test(
  e1 = e_OLS,
  e2 = e_GWO,
  alternative = "two.sided",
  h = 1,
  power = 2
)

# ARDL-OLS vs ARDL-WOA
DM_OLS_WOA <- dm.test(
  e1 = e_OLS,
  e2 = e_WOA,
  alternative = "two.sided",
  h = 1,
  power = 2
)

# ARDL-GWO vs ARDL-WOA
DM_GWO_WOA <- dm.test(
  e1 = e_GWO,
  e2 = e_WOA,
  alternative = "two.sided",
  h = 1,
  power = 2
)

DM_OLS_GWO
DM_OLS_WOA
DM_GWO_WOA




DM_results <- data.frame(
  Comparison = c("ARDL-OLS vs ARDL-GWO",
                 "ARDL-OLS vs ARDL-WOA",
                 "ARDL-GWO vs ARDL-WOA"),
  DM_Statistic = c(
    as.numeric(DM_OLS_GWO$statistic),
    as.numeric(DM_OLS_WOA$statistic),
    as.numeric(DM_GWO_WOA$statistic)
  ),
  P_Value = c(
    DM_OLS_GWO$p.value,
    DM_OLS_WOA$p.value,
    DM_GWO_WOA$p.value
  )
)

DM_results[, -1] <- round(DM_results[, -1], 4)




print(DM_results)
print(DA_Test)




print(Results)

print(Improve)

Obj_Check <- data.frame(
  Method = c("ARDL-OLS", "ARDL-GWO", "ARDL-WOA"),
  Objective_Huber_TV = c(
    objective_huber_tv(theta0),
    objective_huber_tv(theta_GWO),
    objective_huber_tv(theta_WOA)
  )
)

Obj_Check$Objective_Huber_TV <- round(Obj_Check$Objective_Huber_TV, 6)
print(Obj_Check)

