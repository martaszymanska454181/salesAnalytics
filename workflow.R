# Load package

library(salesAnalytics)

# Load data

sales <- load_sales_data(
  "data_raw/train.csv",
  "data_raw/stores.csv",
  "data_raw/holidays_events.csv"
)

# Validate data

validation <- validate_sales_ts(sales)

# Clean data

sales_clean <- clean_sales_ts(sales)

# Business metrics

metrics <- compute_sales_metrics(sales_clean)

# Visualisations

plot_sales_trends(sales_clean)

plot_promotion_impact(sales_clean)

# Management summary

management_summary <- create_management_summary(sales_clean)

# Business logic

sales_ts_logic(
  sales_clean,
  city = "Quito",
  action = "metrics"
)

sales_ts_logic(
  sales_clean,
  city = "Quito",
  action = "plot"
)

# Forecasting - ARIMA

forecast_arima <- create_prognosis(
  sales_clean,
  periods = 30
)

plot(forecast_arima)

# Forecasting - ETS

forecast_ets <- create_prognosis_ets(
  sales_clean,
  periods = 30
)

plot(forecast_ets)
