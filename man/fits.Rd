% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fits.R
\name{fits}
\alias{fits}
\title{Fits the best model from classes ARIMA, ETS, TBATS and NNETAR.}
\usage{
fits(x, train = 0.8, steps = NULL, max.points = 500,
  show.main.graph = T, show.sec.graph = F, show.value = T, PI = F,
  theme.doj = F)
}
\arguments{
\item{x}{A vector or ts object.}

\item{train}{The (initial) percentage of the time series to be used to train the models. Must be \code{0 < train < 1}.}

\item{steps}{Number of steps to forecast. If \code{NULL}, uses the number of points not used in training (testing points). Can't be less than the number of testing points.}

\item{max.points}{Limits the maximum number of points to be used in modeling. Uses the first \code{max.points} points of the series.}

\item{show.main.graph}{Logical. Should the main graphic (with the final model) be displayed?}

\item{show.sec.graph}{Logical. Should the secondary graphics (with the training models) be displayed?}

\item{show.value}{Logical. Should the values be displayed?}

\item{PI}{Prediction Interval used in nnar models. May take long time processing.}

\item{theme.doj}{Logical. Should the theme of Decades Of Jurimetrics be used?}
}
\value{
\code{$fcast} Predicted time series using the model that minimizes the forecasting mean square error.

\code{$mse.pred} Mean squared error of prediction. Used to decide the best model.

\code{$runtime} Running time.
}
\description{
Fits the best model from classes ARIMA, ETS, TBATS and NNETAR.
}
\examples{
library(jurimetrics)

fits(livestock)
fits(livestock, theme.doj = T)
fits(livestock, show.main.graph = F, show.sec.graph = T, show.value = F)

fits(h02, .9)

fits(gas)

data('tjmg_year')
y1 <- ts(tjmg_year$count, start = c(2000,1), frequency = 1)
fits(y1)

data(tjrs_year_month)
y2 <- ts(tjrs_year_month$count, start = c(2000,1), frequency = 12)
fits(y2, train = 0.8, steps = 24)
}
\references{
Hyndman, R.J., & Athanasopoulos, G. (2018) Forecasting: principles and practice, 2nd edition, OTexts: Melbourne, Australia. \href{https://otexts.com/fpp2}{otexts.com/fpp2}.

\href{https://robjhyndman.com/hyndsight/nnetar-prediction-intervals/}{https://robjhyndman.com/hyndsight/nnetar-prediction-intervals/}

\href{https://robjhyndman.com/talks/Google-Oct2015-part1.pdf}{https://robjhyndman.com/talks/Google-Oct2015-part1.pdf}

Zabala, F. J. and Silveira, F. F. (2019). Decades of Jurimetrics.
}
