\name{drawBW}
\alias{drawBW}
 
\title{
BW and percentile ratios plot
}
\description{
This function is used to plot BW and percentile ratios
}
\usage{
drawBW(BW,
      perc,
      X,
      startP = -1,
      endP = -1,
      groupLabel = NULL,
      highBound = -1,
      lowBound = -1,
      nAxisPos = 4,
      offside = 0)
}
 
\arguments{
  \item{BW}{
An array of the BW ratios.
}
  \item{perc}{
An array of the percentile ratios.
}
  \item{X}{
The spectral dataset in matrix format in which each row contains a single sample.
}
  \item{startP}{
The starting point of the segment. If it is -1, the starting point is from begining of the spectra.
}
  \item{endP}{
The ending point of the segment. If it is -1, the ending point is the last point of the spectra.
}
  \item{groupLabel}{
The default value is NULL, it means that a single spectrum has a distinct color. Otherwise, the spectra is colored by their label.
}
  \item{highBound}{
Default value is -1, that means the plot covers also the highest intesity peaks in the figure.
If the users want to limit the upper height of the figure, set this parameter by the limited value.
}
  \item{lowBound}{
Default value is -1, that means the plot covers also the lowest intesity peaks in the figure.
If the users want to limit the under height of the figure, set this parameter by the limited value.
}
  \item{nAxisPos}{
The number of ticks that will be displayed in the horizontal axis.
}
  \item{offside}{
The offside of values in x-axis for display.
}
}
\details{
This function is used to plot BW and percentile ratios 
}

\author{
Trung Nghia VU 
}

\seealso{
\code{\link{drawSpec}} 
}
\examples{ cat("\n Please see more examples in the vignettes file.")

}
 
 
\keyword{ BW }
\keyword{ plot } 
