\name{RCircos.Reset.Plot.Parameters}
\alias{RCircos.Reset.Plot.Parameters}
\title{
Reset RCircos Plot Parameters
}
\description{
Reset RCircos plot parameters after they were initialized. Also update chromosome ideogram and base positions when necessary. Among the parameters, chromosome padding is automatically calculated with base.per.unit unless the padding is set to zero.  Parameters related to radius are automatically adjusted based on radius.
}
\usage{
RCircos.Reset.Plot.Parameters(new.params)
}
\arguments{
  \item{new.params}{
An list contains all plot parameters with updated values.
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

chr.exclude <- c("chrX", "chrY");
tracks.inside <- 5;
tracks.outside <- 0;
RCircos.Set.Core.Components(cyto.info, chr.exclude,  
                  tracks.inside, tracks.outside);


# List RCircos plot parameters then get RCircos plot  
# parameters, reset base.per.unit to 30000 and then  
# reset RCircos plot parameters. List RCircos plot  
# parameters again to see the change
# __________________________________________________
# xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

RCircos.List.Parameters();
params <- RCircos.Get.Plot.Parameters();
params$base.per.unit <- 30000;
RCircos.Reset.Plot.Parameters(params);
RCircos.List.Parameters();
}
\keyword{ methods }
