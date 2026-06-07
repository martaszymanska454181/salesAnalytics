#' Validate sales time series data
#'
#' @param data Sales dataset
#'
#' @return List containing validation results
#' @export

validate_sales_ts <- function(data){

  missing_values <- colSums(is.na(data))

  duplicates <- sum(duplicated(data))

  negative_sales <- sum(data$sales < 0, na.rm = TRUE)

  invalid_dates <- sum(is.na(data$date))

  date_gaps <- sum(diff(sort(unique(data$date))) > 1)

  list(
    missing_values = missing_values,
    duplicates = duplicates,
    negative_sales = negative_sales,
    invalid_dates = invalid_dates,
    date_gaps = date_gaps
  )
}
