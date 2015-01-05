\name{findSegPeakList}
\alias{findSegPeakList}
 
\title{
Selecting the peaks in a segment
}
\description{
This function is to find out which peaks belonging to a segment which ranges from startP to endP
}
\usage{
findSegPeakList(peakList,
                startP,
                endP)
}
 
\arguments{
  \item{peakList}{
The peak lists of the spectra.
}
  \item{startP}{
The starting point of the segment.
}
  \item{endP}{
The ending point of the segment.
}
}
\details{
This function is to find out which peaks belonging to a segment which ranges from startP to endP
}
\value{
The list of peaks in the segment.
}

\author{
Trung Nghia VU 
}

\seealso{
\code{\link{dohClusterCustommedSegments}}
}
\examples{ cat("\n Please see more examples in the vignettes file.")

}
 
 
\keyword{ segment }
\keyword{ peak list } 
