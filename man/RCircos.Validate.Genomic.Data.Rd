\name{RCircos.Validate.Genomic.Data}
\alias{RCircos.Validate.Genomic.Data}
\title{
Validate Genomic Data for RCircos Input
}
\description{
This function validate genomic position for a dataset. Column(s) for chromosome names will be converted to character vectors. Start and end positions will be checked for correct ranges.
}
\usage{
RCircos.Validate.Genomic.Data(genomic.data, cyto.band, plot.type)
}
\arguments{
  \item{genomic.data}{
A data frame with the first three columns as chromosome name, start and end position followed by data values for one or more samples.
}
  \item{cyto.band}{
A data frame containing Circos plot data for chromosome ideogram returned from RCircos.Cytoband.Data(cyto.info, chr.exclude, RCircos.Par).
}
  \item{plot.type}{
Character vector either "plot" for dataset with one set of genomic position data or "link" for dataset with paired genomic position data . 
}
}
\value{
A data frame with same dimmensions of input data.
}
\author{
Hongen Zhang
}
\keyword{methods}
