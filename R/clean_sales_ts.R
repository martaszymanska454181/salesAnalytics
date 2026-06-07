#' Clean sales time series data
#'
#' @param data Sales dataset
#'
#' @return Cleaned dataset
#' @export

clean_sales_ts <- function(data){

  data <- unique(data)

  data <- data[order(data$date), ]

  data$sales[is.na(data$sales)] <-
    median(data$sales, na.rm = TRUE)

  data$onpromotion[is.na(data$onpromotion)] <- 0

  return(data)
}
