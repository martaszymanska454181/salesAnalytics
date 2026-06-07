#' Plot sales trends
#'
#' @param data Sales dataset
#'
#' @return ggplot object
#' @export

plot_sales_trends <- function(data){

  daily_sales <- aggregate(
    sales ~ date,
    data = data,
    FUN = sum
  )

  ggplot2::ggplot(
    daily_sales,
    ggplot2::aes(x = date, y = sales)
  ) +
    ggplot2::geom_line() +
    ggplot2::labs(
      title = "Daily Sales Trend",
      x = "Date",
      y = "Total Sales"
    ) +
    ggplot2::theme_minimal() +
    ggplot2::scale_y_continuous(
      labels = scales::comma
    )

}
