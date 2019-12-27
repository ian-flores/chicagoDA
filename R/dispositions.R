#' Dispositions Data
#'
#' The disposition data presented in this data reflects the culmination of the fact-finding process
#' that leads to the resolution of a case. Each row represents a charge that has been disposed of.
#'
#' @format The data frame \code{dispositions} has 20,234 rows and 31 variables:
#' \describe{
#'   \item{case_id}{Internal unique identifier for each case}
#'   \item{case_participant_id}{Internal unique identifier for each person associated with a case}
#'   \item{offense_category}{Broad offense categories before specific charges are filed on a case}
#'   \item{primary_charge}{A flag for the top charge, usually the way the case is referred to}
#'   \item{charge_id}{Internal unique identifier for each charge filed}
#'   \item{charge_version_id}{Internal unique identifier for each version of a charge associated with charges filed}
#'   \item{disposition_charged_offense_title}{The specific title of the charged offense at the disposition}
#'   \item{disposition_charged_chapter}{The legal chapter for the charge at the disposition}
#'   \item{disposition_charged_act}{The legal act for the charge at the disposition}
#'   \item{disposition_charged_section}{The legal section for the charge at the disposition}
#'   \item{disposition_charged_class}{The legal class for the charge at the disposition}
#'   \item{disposition_aoic}{Administrative Office of the Illinois Courts ID for law of the charge at the disposition}
#'   \item{disposition_date}{The date the charge was disposed of}
#'   \item{charge_disposition}{The result of the charge}
#'   \item{charge_disposition_reason}{Additional information about the result of the charge}
#'   \item{judge}{Judge who oversaw the case}
#'   \item{court_name}{The Circuit Court District the charge was disposed of in}
#'   \item{court_facility}{The courthouse the charge was disposed of in}
#'   \item{age_at_incident}{Recorded age at the time of the incident}
#'   \item{gender}{Recorded gender of the defendant }
#'   \item{race}{Recorded race of the defendant}
#'   \item{incident_begin_date}{Date of when the incident began}
#'   \item{incident_end_date}{Date of when the incident ended (this will be blank for incidents that did not go more than one day)}
#'   \item{arrest_date}{Date and time of arrest}
#'   \item{law_enforcement_agency}{Law enforcement agency associated with the arrest}
#'   \item{unit}{The law enforcement unit associated with the arrest}
#'   \item{incident_city}{The city where the incident took place}
#'   \item{received_date}{Date when felony review received the case}
#'   \item{arraignment_date}{Date of the arraignment}
#'   \item{update_offense_category}{This field is the offense category for the case updated based upon the top charge for the primary offender. It can differ from the first offense category assigned to the case in part because cases evolve.}
#'   \item{charge_count}{The charge count of the charged offense}
#' }
#'
#' @source \url{https://datacatalog.cookcountyil.gov/Courts/Initiation/7mck-ehwz}
#' @seealso  \code{\link{intake}} \code{\link{initiation}}
#' @import tibble
#' @examples
#' str(dispositions)
#' head(dispositions)
#' summary(dispositions)
#'
"dispositions"
