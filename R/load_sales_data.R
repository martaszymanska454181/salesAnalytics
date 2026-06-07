###PROJEKT R
###AUTHORS: Marta Szymańska, Irena Skurat

#' Load sales data
#'
#' @param train_path Path to train.csv
#' @param stores_path Path to stores.csv
#' @param holidays_path Path to holidays_events.csv
#'
#' @return Tibble
#' @export

load_sales_data <- function(
    train_path,
    stores_path,
    holidays_path
){

  train <- readr::read_csv(train_path)

  stores <- readr::read_csv(stores_path)

  holidays <- readr::read_csv(holidays_path)

  sales <- dplyr::left_join(
    train,
    stores,
    by = "store_nbr"
  )

  return(sales)
}
