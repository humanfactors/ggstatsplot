% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggscatterstats.R
\name{ggscatterstats}
\alias{ggscatterstats}
\title{Scatterplot with marginal distributions}
\usage{
ggscatterstats(data, x, y, type = "pearson", conf.level = 0.95,
  bf.prior = 0.707, bf.message = FALSE, label.var = NULL,
  label.expression = NULL, xlab = NULL, ylab = NULL, method = "lm",
  method.args = list(), formula = y ~ x, point.color = "black",
  point.size = 3, point.alpha = 0.4, point.width.jitter = 0,
  point.height.jitter = 0, line.size = 1.5, line.color = "blue",
  marginal = TRUE, marginal.type = "histogram", marginal.size = 5,
  margins = c("both", "x", "y"), package = "wesanderson",
  palette = "Royal1", direction = 1, xfill = "#009E73",
  yfill = "#D55E00", xalpha = 1, yalpha = 1, xsize = 0.7,
  ysize = 0.7, centrality.para = NULL, results.subtitle = TRUE,
  title = NULL, subtitle = NULL, caption = NULL, nboot = 100,
  beta = 0.1, k = 2, axes.range.restrict = FALSE,
  ggtheme = ggplot2::theme_bw(), ggstatsplot.layer = TRUE,
  ggplot.component = NULL, messages = TRUE)
}
\arguments{
\item{data}{Dataframe from which variables are to be taken.}

\item{x}{The column in \code{data} containing the explanatory variable to be
plotted on the x axis. Can be entered either as
a character string (e.g., \code{"x"}) or as a bare expression (e.g, \code{x}).}

\item{y}{The column in \code{data} containing the response (outcome) variable to
be plotted on the y axis. Can be entered either as
a character string (e.g., \code{"y"}) or as a bare expression (e.g, \code{y}).}

\item{type}{Type of association between paired samples required
("\code{"parametric"}: Pearson's product moment correlation coefficient" or
"\code{"nonparametric"}: Spearman's rho" or "\code{"robust"}: percentage bend
correlation coefficient" or "\code{"bayes"}: Bayes Factor for Pearson's \emph{r}").
Corresponding abbreviations are also accepted: \code{"p"} (for
parametric/pearson's), \code{"np"} (nonparametric/spearman), \code{"r"} (robust),
\code{"bf"} (for bayes factor), resp.}

\item{conf.level}{Scalar between 0 and 1. If unspecified, the defaults return
\code{95\%} lower and upper confidence intervals (\code{0.95}).}

\item{bf.prior}{A number between 0.5 and 2 (default \code{0.707}), the prior width
to use in calculating Bayes factors.}

\item{bf.message}{Logical. Decides whether to display Bayes Factor in favor
of \emph{null} hypothesis \strong{for parametric test} (Default: \code{FALSE}).}

\item{label.var}{Variable to use for points labels. Can be entered either as
a character string (e.g., \code{"var1"}) or as a bare expression (e.g, \code{var1}).}

\item{label.expression}{An expression evaluating to a logical vector that
determines the subset of data points to label. This argument can be entered
either as a character string (e.g., \code{"y < 4 & z < 20"}) or as a bare
expression (e.g., \code{y < 4 & z < 20}).}

\item{xlab}{Label for \code{x} axis variable. The default is the variable name.}

\item{ylab}{Label for \code{y} axis variable. The default is the variable name.}

\item{method}{Smoothing method (function) to use, accepts either a character vector,
e.g. \code{"auto"}, \code{"lm"}, \code{"glm"}, \code{"gam"}, \code{"loess"} or a function, e.g.
\code{MASS::rlm} or \code{mgcv::gam}, \code{base::lm}, or \code{base::loess}.

For \code{method = "auto"} the smoothing method is chosen based on the
size of the largest group (across all panels). \code{\link[=loess]{loess()}} is
used for less than 1,000 observations; otherwise \code{\link[mgcv:gam]{mgcv::gam()}} is
used with \code{formula = y ~ s(x, bs = "cs")}. Somewhat anecdotally,
\code{loess} gives a better appearance, but is \eqn{O(N^{2})}{O(N^2)} in memory,
so does not work for larger datasets.

If you have fewer than 1,000 observations but want to use the same \code{gam()}
model that \code{method = "auto"} would use, then set
\code{method = "gam", formula = y ~ s(x, bs = "cs")}.}

\item{method.args}{List of additional arguments passed on to the modelling
function defined by \code{method}.}

\item{formula}{Formula to use in smoothing function, eg. \code{y ~ x},
\code{y ~ poly(x, 2)}, \code{y ~ log(x)}}

\item{point.color, point.size, point.alpha}{Aesthetics specifying geom point
(defaults: \code{point.color = "black"}, \code{point.size = 3},\code{point.alpha = 0.4}).}

\item{point.width.jitter, point.height.jitter}{Degree of jitter in \code{x} and \code{y}
direction, respectively. Defaults to \code{0} (0%) of the resolution of the
data.}

\item{line.size}{Size for the regression line.}

\item{line.color}{color for the regression line.}

\item{marginal}{Decides whether \code{ggExtra::ggMarginal()} plots will be
displayed; the default is \code{TRUE}.}

\item{marginal.type}{Type of marginal distribution to be plotted on the axes
(\code{"histogram"}, \code{"boxplot"}, \code{"density"}, \code{"violin"}, \code{"densigram"}).}

\item{marginal.size}{Integer describing the relative size of the marginal
plots compared to the main plot. A size of \code{5} means that the main plot is
5x wider and 5x taller than the marginal plots.}

\item{margins}{Character describing along which margins to show the plots.
Any of the following arguments are accepted: \code{"both"}, \code{"x"}, \code{"y"}.}

\item{package}{Name of package from which the palette is desired as string
or symbol.}

\item{palette}{Name of palette as string or symbol.}

\item{direction}{Either \code{1} or \code{-1}. If \code{-1} the palette will be reversed.}

\item{xfill, yfill}{Character describing color fill for \code{x} and \code{y} axes
marginal distributions (default: \code{"#009E73"} (for \code{x}) and \code{"#D55E00"} (for
\code{y})). If set to \code{NULL}, manual specification of colors will be turned off
and 2 colors from the specified \code{palette} from \code{package} will be selected.}

\item{xalpha, yalpha}{Numeric deciding transparency levels for the marginal
distributions. Any numbers from \code{0} (transparent) to \code{1} (opaque). The
default is \code{1} for both axes.}

\item{xsize, ysize}{Size for the marginal distribution boundaries (Default:
\code{0.7}).}

\item{centrality.para}{Decides \emph{which} measure of central tendency (\code{"mean"}
or \code{"median"}) is to be displayed as vertical (for \code{x}) and horizontal (for
\code{y}) lines.}

\item{results.subtitle}{Decides whether the results of statistical tests are
to be displayed as a subtitle (Default: \code{TRUE}). If set to \code{FALSE}, only
the plot will be returned.}

\item{title}{The text for the plot title.}

\item{subtitle}{The text for the plot subtitle. Will work only if
\code{results.subtitle = FALSE}.}

\item{caption}{The text for the plot caption.}

\item{nboot}{Number of bootstrap samples for computing effect size (Default:
\code{100}).}

\item{beta}{bending constant (Default: \code{0.1}). For more, see \code{?WRS2::pbcor}.}

\item{k}{Number of decimal places expected for results.}

\item{axes.range.restrict}{Logical decides whether to restrict the axes
values ranges to min and max values of the \code{x} and \code{y} variables (Default:
\code{FALSE}).}

\item{ggtheme}{A function, \code{ggplot2} theme name. Default value is
\code{ggplot2::theme_bw()}. Any of the \code{ggplot2} themes, or themes from
extension packages are allowed (e.g., \code{ggthemes::theme_economist()},
\code{hrbrthemes::theme_ipsum_ps()}, \code{ggthemes::theme_fivethirtyeight()}, etc.).}

\item{ggstatsplot.layer}{Logical that decides whether \code{theme_ggstatsplot}
theme elements are to be displayed along with the selected \code{ggtheme}
(Default: \code{TRUE}).}

\item{ggplot.component}{A \code{ggplot} component to be added to the plot prepared
by \code{ggstatsplot}. This argument is primarily helpful for \code{grouped_} variant
of the current function. Default is \code{NULL}. The argument should be entered
as a function.}

\item{messages}{Decides whether messages references, notes, and warnings are
to be displayed (Default: \code{TRUE}).}
}
\description{
Scatterplots from \code{ggplot2} combined with marginal
histograms/boxplots/density plots with statistical details added as a
subtitle.
}
\note{
\itemize{
\item \code{marginal.type = "densigram"} will work only with the development
version of \code{ggExtra} that you can download from \code{GitHub}:
\code{devtools::install_github("daattali/ggExtra")}

\item The plot uses \code{ggrepel::geom_label_repel} to attempt to keep labels
from over-lapping to the largest degree possible.  As a consequence plot
times will slow down massively (and the plot file will grow in size) if you
have a lot of labels that overlap.
}
}
\examples{

# to get reproducible results from bootstrapping
set.seed(123)

# creating dataframe
mtcars_new <- mtcars \%>\%
  tibble::rownames_to_column(., var = "car") \%>\%
  tibble::as_tibble(x = .)

# simple function call with the defaults
ggstatsplot::ggscatterstats(
  data = mtcars_new,
  x = wt,
  y = mpg,
  type = "np",
  label.var = car,
  label.expression = wt < 4 & mpg < 20,
  axes.range.restrict = TRUE,
  centrality.para = "median",
  xfill = NULL
)
}
\references{
\url{https://indrajeetpatil.github.io/ggstatsplot/articles/web_only/ggscatterstats.html}
}
\seealso{
\code{\link{grouped_ggscatterstats}}, \code{\link{ggcorrmat}},
\code{\link{grouped_ggcorrmat}}
}
\author{
Indrajeet Patil, Chuck Powell
}
