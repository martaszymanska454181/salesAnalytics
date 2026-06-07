# salesAnalytics

R package for loading, validating, cleaning, analysing and forecasting retail sales time series data.

## Authors

* Marta Szymanska
* Irena Skurat

## Dataset

This project uses data from the Kaggle competition:

Store Sales - Time Series Forecasting

https://www.kaggle.com/competitions/store-sales-time-series-forecasting

Due to GitHub file size limitations, the original `train.csv` file is not included in this repository.

To run the project, download the following files from Kaggle and place them in the `data_raw` directory:

* `train.csv`
* `stores.csv`
* `holidays_events.csv`

Expected folder structure:

```text
data_raw/
├── train.csv
├── stores.csv
└── holidays_events.csv
```

## Main Features

* data loading
* data validation
* data cleaning
* business metrics calculation
* sales trend visualisation
* promotion impact analysis
* management summary generation
* business logic layer
* ARIMA forecasting
* ETS forecasting

## Main Functions

* load_sales_data()
* validate_sales_ts()
* clean_sales_ts()
* compute_sales_metrics()
* plot_sales_trends()
* plot_promotion_impact()
* create_management_summary()
* sales_ts_logic()
* create_prognosis()
* create_prognosis_ets()

## Example

```r
sales <- load_sales_data(
  "data_raw/train.csv",
  "data_raw/stores.csv",
  "data_raw/holidays_events.csv"
)

sales_clean <- clean_sales_ts(sales)

metrics <- compute_sales_metrics(sales_clean)

plot_sales_trends(sales_clean)

forecast <- create_prognosis(sales_clean)
```
