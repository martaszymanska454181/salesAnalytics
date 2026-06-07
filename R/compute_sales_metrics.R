#' Compute sales metrics
#'
#' @param data Sales dataset
#'
#' @return Data frame with business metrics
#' @export

compute_sales_metrics <- function(data){

  total_sales <- sum(data$sales)

  average_sales <- mean(data$sales)

  median_sales <- median(data$sales)

  max_sales <- max(data$sales)

  min_sales <- min(data$sales)

  sd_sales <- sd(data$sales)

  promotion_share <- mean(data$onpromotion > 0)

  data.frame(
    total_sales,
    average_sales,
    median_sales,
    max_sales,
    min_sales,
    sd_sales,
    promotion_share
  )
}
