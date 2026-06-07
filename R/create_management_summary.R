#' Create management summary
#'
#' @param data Sales dataset
#'
#' @return Data frame with management summary
#' @export

create_management_summary <- function(data){

  store_sales <- aggregate(
    sales ~ store_nbr,
    data = data,
    sum
  )

  best_store <- store_sales$store_nbr[
    which.max(store_sales$sales)
  ]

  worst_store <- store_sales$store_nbr[
    which.min(store_sales$sales)
  ]

  city_sales <- aggregate(
    sales ~ city,
    data = data,
    sum
  )

  best_city <- city_sales$city[
    which.max(city_sales$sales)
  ]

  category_sales <- aggregate(
    sales ~ family,
    data = data,
    sum
  )

  fastest_growing_category <- category_sales$family[
    which.max(category_sales$sales)
  ]

  summary_df <- data.frame(
    metric = c(
      "Best Store",
      "Worst Store",
      "Best City",
      "Top Category",
      "Average Sales",
      "Promotion Share"
    ),
    value = c(
      best_store,
      worst_store,
      best_city,
      fastest_growing_category,
      round(mean(data$sales),2),
      round(mean(data$onpromotion > 0)*100,2)
    )
  )

  return(summary_df)
}
