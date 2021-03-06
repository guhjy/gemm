% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/moderatedMediationSem.R
\name{moderatedMediationSem}
\alias{moderatedMediationSem}
\title{Analyze moderated mediation model using SEM}
\usage{
moderatedMediationSem(data = NULL, xvar, mvars, yvar, xmmod = NULL,
  mymod = NULL, cmvars = NULL, cyvars = NULL, nboot = 1000)
}
\arguments{
\item{data}{data frame}

\item{xvar}{predictor variable, must be either numerical or dichotomous}

\item{mvars}{vector of names of mediator variables}

\item{yvar}{dependent variable, must be numerical}

\item{xmmod}{moderator of effect predictor on mediators, must be either numerical or dichotomous}

\item{mymod}{moderator of effect mediators on dependent variable, must be either numerical or dichotomous}

\item{cmvars}{covariates for mediators}

\item{cyvars}{covariates for dependent variable}

\item{nboot}{number of bootstrap samples}
}
\value{
moderatedMediationSem object
}
\description{
Analyze moderated mediation model using SEM
}
\examples{
data("gemmDat")
res <- moderatedMediationSem(dat = gemmDat, xvar="x1", mvars= c("m1","m2","m3"),
       yvar = "y1", xmmod = "mod1", mymod= "bimod2",
       cmvars =c("c1","c2"), cyvars =c("c1","c2"), nboot=50)
print(res)
plot(res)
}
