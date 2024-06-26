% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/orbital.R
\name{orbital}
\alias{orbital}
\title{Turn tidymodels workflows into equations}
\usage{
orbital(x, ...)
}
\arguments{
\item{x}{A workflow object.}

\item{...}{Not currently used.}
}
\value{
A orbital object.
}
\description{
Turn tidymodels workflows into equations
}
\examples{
\dontshow{if (rlang::is_installed(c("recipes", "tidypredict", "workflows"))) (if (getRversion() >= "3.4") withAutoprint else force)(\{ # examplesIf}
library(workflows)
library(recipes)
library(parsnip)

rec_spec <- recipe(mpg ~ ., data = mtcars) \%>\%
  step_normalize(all_numeric_predictors())

lm_spec <- linear_reg()

wf_spec <- workflow(rec_spec, lm_spec)

wf_fit <- fit(wf_spec, mtcars)

orbital(wf_fit)
\dontshow{\}) # examplesIf}
}
