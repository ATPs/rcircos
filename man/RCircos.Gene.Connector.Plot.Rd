\name{RCircos.Gene.Connector.Plot}
\alias{RCircos.Gene.Connector.Plot}
\title{
Draw Connectors between Chromosome Ideogram and Gene Names
}
\description{
Draw a set of connectors (three lines for each connector) between chromosome ideogram and gene names. RCircos core components and graphics device must be initialized before drawing.
}
\usage{
RCircos.Gene.Connector.Plot(genomic.data, track.num, side)
}
\arguments{
  \item{genomic.data}{
A data frame with the first four columns for chromosome names, start positions, end positions, and gene names.
}
  \item{track.num}{
Integer, representing the ordinal number of the plot track where the connectors are plotted.
}
  \item{side}{
Character vector, either "in" or "out" representing the position related to chromosome ideogram.
}
}
\author{
Hongen Zhang
}
\examples{
# Load RCircos libaray
# __________________________________________________
# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

library(RCircos);


# Load human chromosome ideogram
# __________________________________________________
# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

data(UCSC.HG19.Human.CytoBandIdeogram);
cyto.info <- UCSC.HG19.Human.CytoBandIdeogram;


# Set RCircso core components
# __________________________________________________
# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

cyto.info <- UCSC.HG19.Human.CytoBandIdeogram;
chr.exclude <- c("chrX", "chrY");
tracks.inside <- 5;
tracks.outside <- 0;
RCircos.Set.Core.Components(cyto.info, chr.exclude,  
                  tracks.inside, tracks.outside);


# Initialize graphic device and plot chromosome  
# ideogram
# __________________________________________________
# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

RCircos.Set.Plot.Area();
RCircos.Chromosome.Ideogram.Plot();


# Load gene label data and plot connectors  
# __________________________________________________
# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

data(RCircos.Gene.Label.Data);
RCircos.Gene.Connector.Plot(RCircos.Gene.Label.Data, 1, "in");
}
\keyword{ methods }

