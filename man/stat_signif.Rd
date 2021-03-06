% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/significance_annotation.R
\name{stat_signif}
\alias{stat_signif}
\alias{geom_signif}
\title{Create significance layer}
\usage{
stat_signif(mapping = NULL, data = NULL, position = "identity",
  na.rm = FALSE, show.legend = NA, inherit.aes = TRUE,
  comparisons = NULL, test = "wilcox.test", test.args = NULL,
  annotations = NULL, map_signif_level = FALSE, y_position = NULL,
  margin_top = 0.05, step_increase = 0, tip_length = 0.03, ...)

geom_signif(mapping = NULL, data = NULL, stat = "signif",
  position = "identity", na.rm = FALSE, show.legend = NA,
  inherit.aes = TRUE, comparisons = NULL, test = "wilcox.test",
  test.args = NULL, annotations = NULL, map_signif_level = FALSE,
  y_position = NULL, margin_top = 0.05, step_increase = 0,
  tip_length = 0.03, ...)
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link{aes}} or
\code{\link{aes_}}. If specified and \code{inherit.aes = TRUE} (the
default), it is combined with the default mapping at the top level of the
plot. You must supply \code{mapping} if there is no plot mapping.}

\item{data}{The data to be displayed in this layer. There are three
   options:

   If \code{NULL}, the default, the data is inherited from the plot
   data as specified in the call to \code{\link{ggplot}}.

   A \code{data.frame}, or other object, will override the plot
   data. All objects will be fortified to produce a data frame. See
   \code{\link{fortify}} for which variables will be created.

   A \code{function} will be called with a single argument,
   the plot data. The return value must be a \code{data.frame.}, and
   will be used as the layer data.}

\item{position}{Position adjustment, either as a string, or the result of
a call to a position adjustment function.}

\item{na.rm}{If \code{FALSE} (the default), removes missing values with
a warning.  If \code{TRUE} silently removes missing values.}

\item{show.legend}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.}

\item{inherit.aes}{If \code{FALSE}, overrides the default aesthetics,
rather than combining with them. This is most useful for helper functions
that define both data and aesthetics and shouldn't inherit behaviour from
the default plot specification, e.g. \code{\link{borders}}.}

\item{comparisons}{A list of length-2 vectors.
The entries in the vector are either the names of 2 values on the x-axis
or the 2 integers that correspond to the index of the columns of interest}

\item{test}{the name of the statistical test that is applied to the values of the 2 columns (e.g. t.test, wilcox.test etc.)}

\item{test.args}{additional arguments for the test method}

\item{annotations}{character vector with alternative annotations, if not null test is ignored}

\item{map_signif_level}{boolean value, if the p-value are directly written as annotation or asterisks are used instead.
Alternatively one can provide a named numeric vector to create custom mappings from p-values to annotation:
For example: c("***"=0.001, "**"=0.01, "*"=0.05)}

\item{y_position}{numeric vector with the precise locations of the bars}

\item{margin_top}{numeric vector how much higher that the maximum value that bars start as fraction of total height}

\item{step_increase}{numeric vector with the increase in fraction of total height for every additional comparison to
minimize overlap.}

\item{tip_length}{numeric vector with the fraction of total height that the bar goes down to indicate the precise column}

\item{...}{other arguments passed on to \code{\link{layer}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{color = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}

\item{stat}{The statistical transformation to use on the data for this
layer, as a string.}
}
\description{
Create significance layer
}
\examples{
\dontrun{
library(ggplot2)
library(ggsignif)
ggplot(mpg, aes(class, hwy)) +
 geom_boxplot() +
 geom_signif(comparisons = list(c("compact", "pickup"),
                                c("subcompact", "suv")))
}

}
