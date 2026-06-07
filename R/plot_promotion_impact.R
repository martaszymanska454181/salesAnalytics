#' Plot promotion impact
#'
#' @param data Sales dataset
#'
#' @return ggplot object
#' @export

plot_promotion_impact <- function(data){

  promo_data <- aggregate(
    sales ~ onpromotion,
    data = transform(
      data,
      onpromotion = ifelse(
        onpromotion > 0,
        "Promotion",
        "No Promotion"
      )
    ),
    mean
  )

  ggplot2::ggplot(
    promo_data,
    ggplot2::aes(
      x = onpromotion,
      y = sales
    )
  ) +
    ggplot2::geom_col() +
    ggplot2::labs(
      title = "Impact of Promotions on Sales",
      x = "Promotion Status",
      y = "Average Sales"
    ) +
    ggplot2::theme_minimal()

}
