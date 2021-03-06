% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_balanced_tree.R
\name{add_balanced_tree}
\alias{add_balanced_tree}
\title{Add a balanced tree of nodes to the graph}
\usage{
add_balanced_tree(graph, k, h, type = NULL, label = TRUE, rel = NULL,
  nodes = NULL)
}
\arguments{
\item{graph}{a graph object of class
\code{dgr_graph} that is created using
\code{create_graph}.}

\item{k}{the branching factor for the tree.}

\item{h}{the height of the tree.}

\item{type}{an optional string that describes the
entity type for the nodes to be added.}

\item{label}{either a vector object of length
\code{n} that provides optional labels for the new
nodes, or, a boolean value where setting to
\code{TRUE} ascribes node IDs to the label and
\code{FALSE} yields a blank label.}

\item{rel}{an optional string for providing a
relationship label to all new edges created in the
node tree.}

\item{nodes}{an optional vector of node IDs of
length \code{n} for the newly created nodes. If
nothing is provided, node IDs will assigned as
monotonically increasing integers.}
}
\value{
a graph object of class \code{dgr_graph}.
}
\description{
With a graph object of class
\code{dgr_graph}, add a balanced tree to the graph.
}
\examples{
\dontrun{
library(magrittr)

# Create a new graph and add 3 different types of
# balanced trees of height 2 (branching twice) and
# different branching ratios
graph <-
  create_graph() \%>\%
  add_balanced_tree(2, 2, "binary") \%>\%
  add_balanced_tree(3, 2, "tertiary") \%>\%
  add_balanced_tree(4, 2, "quaternary")

# Get node information from this graph
node_info(graph)
#>    node label       type deg indeg outdeg loops
#> 1     1     1     binary   2     0      2     0
#> 2     8     8   tertiary   3     0      3     0
#> 3    21    21 quaternary   4     0      4     0
#> 4     2     2     binary   3     1      2     0
#> 5     3     3     binary   3     1      2     0
#> 6     9     9   tertiary   4     1      3     0
#> 7    10    10   tertiary   4     1      3     0
#> 8    11    11   tertiary   4     1      3     0
#> 9    22    22 quaternary   5     1      4     0
#> 10   23    23 quaternary   5     1      4     0
#> 11   24    24 quaternary   5     1      4     0
#> 12   25    25 quaternary   5     1      4     0
#> 13    4     4     binary   1     1      0     0
#> 14    5     5     binary   1     1      0     0
#> 15    6     6     binary   1     1      0     0
#> 16    7     7     binary   1     1      0     0
#> 17   12    12   tertiary   1     1      0     0
#> 18   13    13   tertiary   1     1      0     0
#> 19   14    14   tertiary   1     1      0     0
#> 20   15    15   tertiary   1     1      0     0
#> 21   16    16   tertiary   1     1      0     0
#> 22   17    17   tertiary   1     1      0     0
#> 23   18    18   tertiary   1     1      0     0
#> 24   19    19   tertiary   1     1      0     0
#> 25   20    20   tertiary   1     1      0     0
#> 26   26    26 quaternary   1     1      0     0
#> 27   27    27 quaternary   1     1      0     0
#> 28   28    28 quaternary   1     1      0     0
#> 29   29    29 quaternary   1     1      0     0
#> 30   30    30 quaternary   1     1      0     0
#> 31   31    31 quaternary   1     1      0     0
#> 32   32    32 quaternary   1     1      0     0
#> 33   33    33 quaternary   1     1      0     0
#> 34   34    34 quaternary   1     1      0     0
#> 35   35    35 quaternary   1     1      0     0
#> 36   36    36 quaternary   1     1      0     0
#> 37   37    37 quaternary   1     1      0     0
#> 38   38    38 quaternary   1     1      0     0
#> 39   39    39 quaternary   1     1      0     0
#> 40   40    40 quaternary   1     1      0     0
#> 41   41    41 quaternary   1     1      0     0
}
}

