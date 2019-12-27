#' @importFrom dplyr case_when
#' @importFrom tidyr as_tibble
#' @importFrom RSocrata read.socrata
NULL

#' Get all data regarding one step in the criminal process
#'
#' @param dataset_name The name of the dataset to be retrieved.
#'   One of 'intake', 'initiation', 'dispositions', 'sentencing'.
#' @return A [tibble][tibble::tibble-package]
#' @export
#' @seealso \code{\link{intake}} \code{\link{initiation}} \code{\link{dispositions}} \code{\link{sentencing}}
#' @examples
#' \dontrun{
#' sentencing_data <- get_all_data('sentencing')
#' }
get_all_data <- function(dataset_name){
  url <- dplyr::case_when(dataset_name == 'intake' ~ 'https://datacatalog.cookcountyil.gov/resource/3k7z-hchi.csv',
                          dataset_name == 'initiation' ~ 'https://datacatalog.cookcountyil.gov/resource/7mck-ehwz.csv',
                          dataset_name == 'dispositions' ~ 'https://datacatalog.cookcountyil.gov/resource/apwk-dzx8.csv',
                          dataset_name == 'sentencing' ~ 'https://datacatalog.cookcountyil.gov/resource/tg8v-tm6u.csv')

  data <- RSocrata::read.socrata(url = url)

  data <- tidyr::as_tibble(data)

  return(data)
}
