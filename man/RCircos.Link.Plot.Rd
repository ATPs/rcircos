\name{RCircos.Link.Plot}
\alias{RCircos.Link.Plot}
\title{
Circos-like Link Line Plot
}
\description{
Draw lines (quandratic Bezier curves) between paired genomic positions. RCircos core components and graphic device must be initialize before drawing. Link lines are always in the center of plot area.
}
\usage{
RCircos.Link.Plot(link.data, track.num, by.chromosome = FALSE)
}
\arguments{
  \item{link.data}{
A data frame with paired genomic positions in each row. The first three columns are for chromosome names, start and end position of one genomic position followed by three columns for chromosome names, start and end position of the second genomic position. 
}
  \item{track.num}{
Integer, representing the ordinal number of the plot track where the link lines will start.
}
  \item{by.chromosome}{
Logic. If true, red color will be used for links between positions of same chromosomes and blue color for links between different chromosomes. Otherwise, different colors will be automatically assigned for each line.
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


# Set RCircso core components
# __________________________________________________
# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

cyto.info <- UCSC.HG19.Human.CytoBandIdeogram;
chr.exclude <- c("chrX", "chrY");
num.inside <- 5;
num.outside <- 0;
RCircos.Set.Core.Components(cyto.info, chr.exclude,  
                     num.inside, num.outside);


# Initialize graphic device and plot chromosome  
# ideogram
# __________________________________________________
# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

RCircos.Set.Plot.Area();
RCircos.Chromosome.Ideogram.Plot();


# Load link data and plot link lines
# __________________________________________________
# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

data(RCircos.Link.Data);
track.num <- 4;
RCircos.Link.Plot(RCircos.Link.Data, track.num, TRUE);
}
\keyword{ methods }