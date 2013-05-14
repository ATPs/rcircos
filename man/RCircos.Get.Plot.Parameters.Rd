\name{RCircos.Get.Plot.Parameters}
\alias{RCircos.Get.Plot.Parameters}
\title{
Get All RCircos Plot Parameters
}
\description{
Get all parameters used during current RCircos session in order to check and reset plot parameters. RCircos core components must be initialized first.
}
\usage{
RCircos.Get.Plot.Parameters()
}
\value{
A list of all parameters used for RCircos plot.
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


# Get RCircos plot parameters
# __________________________________________________
# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

params <- RCircos.Get.Plot.Parameters();
params
}
\keyword{ methods }
