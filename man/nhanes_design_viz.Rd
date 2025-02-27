% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nhanes_design_viz.R
\name{nhanes_design_viz}
\alias{nhanes_design_viz}
\title{Visualize a summary of NHANES data}
\usage{
nhanes_design_viz(
  x,
  statistic_primary = NULL,
  title = NULL,
  geom = "bar",
  reorder_cats = FALSE,
  width = NULL,
  height = 600,
  size_point = NULL,
  size_error = NULL
)
}
\arguments{
\item{x}{[nhanes_design]

an NHANES design object. See \link{nhanes_design} for more details.}

\item{statistic_primary}{[character(1)]

the statistic that defines the geometric objects in the plot. Other
statistics will be featured in the text that appears when the users
mouse hovers over the corresponding object.}

\item{title}{[character(1)]

The title that will appear above the plot. If this is not supplied,
the title will be generated using the \code{key} data in \code{x}.}

\item{geom}{[character(1)]

The type of figure that will be made. Valid options are:
\itemize{
\item \code{'bar'} creates a bar plot with annotations on the bars
\item \code{'point'} creates a scatter plot with 95\% confidence interval error bars
}}

\item{reorder_cats}{[logical(1)]

whether to re-order the categorical group variable so that its levels
are shown in increasing order by the expected outcome.}

\item{width}{[numeric(1)]

the width of the plot, in pixels}

\item{height}{[numeric(1)]

the height of the plot, in pixels}

\item{size_point}{[numeric(1)]

the size of points in the plot. (only relevant if \code{'geom' = 'point'})}

\item{size_error}{[numeric(1)]

the size of error bars in the plot. (only relevant if \code{'geom' = 'point'})}
}
\value{
a \code{plotly} object
}
\description{
Analyze the prevalence, mean, or quantiles of an outcome
over time.
}
