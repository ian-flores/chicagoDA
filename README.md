
<!-- README.md is generated from README.Rmd. Please edit that file -->

# chicagoDA

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/chicagoDA)](https://CRAN.R-project.org/package=chicagoDA)
<!-- badges: end -->

The goal of chicagoDA is to facilitate access to the Cook County State
Attorney’s Office data published recently by the Cook County Government.
The package is named `chicagoDA` as Chicago is the most famous city
within Cook County and thus will be more recognizable.

## Installation

You can install the GitHub version of chicagoDA from
[GitHub](https://github.com/ian-flores/chicagoDA) with:

``` r
install.packages("devtools")
devtools::install_github('ian-flores/chicagoDA')
```

## Datasets

``` r
library(chicagoDA)
library(tidyverse)
```

### Intake

``` r
glimpse(intake)
#> Observations: 36,190
#> Variables: 17
#> $ case_id                 <chr> "129405877581", "129568427364", "1295684…
#> $ case_participant_id     <chr> "1077995851303", "1079958749626", "10799…
#> $ received_date           <dttm> 2019-01-05, 2019-01-01, 2019-01-01, 201…
#> $ offense_category        <fct> UUW - Unlawful Use of Weapon, UUW - Unla…
#> $ participant_status      <fct> Approved, Approved, Approved, Approved, …
#> $ age_at_incident         <int> 31, 24, 20, 35, 42, 20, 30, 35, 31, NA, …
#> $ gender                  <fct> Male, Male, Male, Male, Male, Male, Male…
#> $ race                    <fct> Black, Black, Black, White [Hispanic or …
#> $ incident_begin_date     <dttm> 2018-11-12, 2019-01-01, 2018-12-31, 201…
#> $ incident_end_date       <dttm> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,…
#> $ law_enforcement_agency  <fct> CHICAGO PD, CHICAGO PD, CHICAGO PD, CHIC…
#> $ unit                    <chr> "District 10 - Ogden", "District 3 - Gra…
#> $ incident_city           <chr> "Chicago", "Chicago", "Chicago", "Chicag…
#> $ arrest_date             <dttm> 2018-11-12 23:23:00, NA, 2018-12-31 22:…
#> $ felony_review_date      <dttm> NA, 2019-01-01, 2019-01-01, 2019-01-01,…
#> $ felony_review_result    <chr> "", "Approved", "Approved", "Continued I…
#> $ update_offense_category <chr> "Narcotics", "UUW - Unlawful Use of Weap…
```

``` r
?intake
```
