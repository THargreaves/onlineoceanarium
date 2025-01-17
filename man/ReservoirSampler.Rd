% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/statistics.R
\docType{class}
\name{ReservoirSampler}
\alias{ReservoirSampler}
\title{Create a streamer for producing a random sample from a population}
\format{
An \code{\link{R6Class}} generator object
}
\description{
\code{ReservoirSampler} creates a streaming algorithm that can
be used to obtain a random sample from a population that is too large to
fit in memory. The samples can be made reproducible can be using
`set.seed(...)` before initialising the streamer.

Implementation is based on doi:10.1145/198429.198435.
}
\examples{
sampler <- ReservoirSampler$new(k = 10)
for (i in 1:100) {
    sampler$update(i)
}
length(sampler$value)  # random sample from 1:100 of size 10
#> [1] 10

}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-new}{\code{ReservoirSampler$new()}}
\item \href{#method-update}{\code{ReservoirSampler$update()}}
\item \href{#method-clone}{\code{ReservoirSampler$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Creates a new \code{ReservoirSampler} streamer object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReservoirSampler$new(k)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{k}}{the desired sample size}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The new \code{ReservoirSampler} (invisibly)
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-update"></a>}}
\if{latex}{\out{\hypertarget{method-update}{}}}
\subsection{Method \code{update()}}{
Update the \code{ReservoirSampler} streamer object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReservoirSampler$update(x)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{x}}{values to be added to the stream}
}
\if{html}{\out{</div>}}
}
\subsection{Returns}{
The updated \code{ReservoirSampler} (invisibly)
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{ReservoirSampler$clone(deep = FALSE)}\if{html}{\out{</div>}}
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
