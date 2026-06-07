#' Sales time series logic
#'
#' @param data Sales dataset
#' @param city Optional city filter
#' @param state Optional state filter
#' @param type Optional store type filter
#' @param action "metrics" or "plot"
#'
#' @return Metrics table or plot
#' @export

sales_ts_logic <- function(
    data,
    city = NULL,
    state = NULL,
    type = NULL,
    action = "metrics"
){

  if(!is.null(city)){
    data <- data[data$city == city, ]
  }

  if(!is.null(state)){
    data <- data[data$state == state, ]
  }

  if(!is.null(type)){
    data <- data[data$type == type, ]
  }

  if(action == "metrics"){
    return(
      compute_sales_metrics(data)
    )
  }

  if(action == "plot"){
    return(
      plot_sales_trends(data)
    )
  }

}
