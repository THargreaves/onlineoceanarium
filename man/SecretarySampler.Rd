% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statistics.R
\docType{class}
\name{SecretarySampler}
\alias{SecretarySampler}
\title{Create a streamer for the modified secretary problem based on maximising the
expected score of a candidate when sampling from a known distribution
of scores.}
\format{
An \code{\link{R6Class}} generator object
}
\description{
\code{SecretarySampler} creates a streamer object to reject
 or accept a candidate based on their score. The assumptions of the process
 are as follows:
 - we are allowed to make at most N successive draws from a hypothetical
 population of candidates with a known distribution function of scores
 - we are allowed to stop at the end of any draw and we gain the score of
 the currently observed candidate minus the total cost of observing
 all previous candidates
 - if we decide to continue sampling, it is not possible to go back to
 a previous candidate
 - if we decide to stop or reach the last candidate, the process ends.

Implementation is based on doi:10.1016/0022-247X(61)90023-3
}
\examples{
set.seed(0)
candidate_scores <- rexp(10, rate = 1)
distr = list(func = "exp", rate = 1)
secretary <- SecretarySampler$new(10, c = 0, distr = distr)
i <- 1
while(secretary$value$state == "CONTINUE"
    && i <= length(candidate_scores)) {
   secretary$update(candidate_scores[i])
   i <- i + 1
}
secretary$value

## ------------------------------------------------
## Method `SecretarySampler$new`
## ------------------------------------------------

distr <- list(func = "exp", "rate" = 1)
secretary <- SecretarySampler$new(N = 10, c = 0, distr = distr)


## ------------------------------------------------
## Method `SecretarySampler$update`
## ------------------------------------------------

secretary$update(2.5)

}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{SecretarySampler$new()}}
\item \href{#method-update}{\code{SecretarySampler$update()}}
\item \href{#method-clone}{\code{SecretarySampler$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Creates a new \code{SecretarySampler} streamer object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SecretarySampler$new(N, c = 0, distr)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{N}}{the maximum number of candidates to consider}

\item{\code{c}}{the cost of observing one candidate}

\item{\code{distr}}{list specifying the distribution of candidate scores}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The new \code{SecretarySampler} (invisibly)
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{distr <- list(func = "exp", "rate" = 1)
secretary <- SecretarySampler$new(N = 10, c = 0, distr = distr)

}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-update"></a>}}
\if{latex}{\out{\hypertarget{method-update}{}}}
\subsection{Method \code{update()}}{
Update the \code{SecretarySampler} streamer object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SecretarySampler$update(x)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{x}}{a single observed score of a candidate}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The updated \code{SecretarySampler} (invisibly)
}
\subsection{Examples}{
\if{html}{\out{<div class="r example copy">}}
\preformatted{secretary$update(2.5)

}
\if{html}{\out{</div>}}

}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{SecretarySampler$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
