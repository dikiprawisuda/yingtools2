% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/yingtools2.R
\name{gg.stack}
\alias{gg.stack}
\title{Stack and line up ggplot objects in a column}
\usage{
gg.stack(
  ...,
  heights = NULL,
  adjust.themes = TRUE,
  gg.extras = NULL,
  gap = 0,
  margin = 5.5,
  units = "pt",
  newpage = TRUE,
  as.gtable = FALSE
)
}
\arguments{
\item{...}{ggplot objects to be stacked}

\item{heights}{a numeric vector representing the relative height of each plot. Passed directly to \code{grid.arrange}.}

\item{adjust.themes}{logical, whether or not to adjust each plot's theme for stacking (change gap/margin, suppress x-axis in upper plots). Default \code{TRUE}.}

\item{gg.extras}{a list of ggplot objects that will be applied to all plots. Default is \code{NULL}.}

\item{gap}{size of gap between stacked plots. Default is 0}

\item{margin}{size of the margin around the plots. Default is 5.5.}

\item{units}{specifies units used for gap and margin. Default is "pt"}

\item{newpage}{logical, whether or not to erase current grid device. Default is TRUE. (Note, should turn this off if using in a shiny plot)}

\item{as.gtable}{logical, whether or not to return as a gtable object (i.e. don't execute \code{grid.draw}). Default is \code{FALSE}. Do this if you want to do more arranging afterwards.}
}
\value{
plot of stacked ggplots
}
\description{
Use this to arrange ggplot objects, where the axes, plot, and legend are lined up correctly.
}
\details{
Performs these steps:
(1) change margins so that plots are closer together
(2) alters widths of each component so that the plots will line up nicely
(3) calls \code{grid.arrange(...,ncol=1)}
If a \code{NULL} value is passed to the plot list, that plot and the corresponding height value will be omitted.
}
