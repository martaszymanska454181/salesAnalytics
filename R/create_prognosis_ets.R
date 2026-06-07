#' Create sales forecast using ETS
#'
#' @param data Sales dataset
#' @param periods Number of future periods
#'
#' @return Forecast object
#' @export

create_prognosis_ets <- function(
    data,
    periods = 30
){

  daily_sales <- aggregate(
    sales ~ date,
    data = data,
    sum
  )

  ts_sales <- ts(
    daily_sales$sales,
    frequency = 7
  )

  model <- forecast::ets(
    ts_sales
  )

  forecast::forecast(
    model,
    h = periods
  )

}
