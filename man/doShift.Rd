\name{doShift}
\alias{doShift}
 
\title{
Segment shift
}
\description{
Move a spectral segment of a sample shiftStep points to right or left
}
\usage{
doShift(specSeg,
	shiftStep)
}
 
\arguments{
  \item{specSeg}{
The segment which needs to be shifted
}
  \item{shiftStep}{
The shift step for moving. If it is a negative (positive) value, the segment is moved to left (right).
}
}
\details{
Move a spectral segment of a sample shiftStep points to right or left 
}
\value{
The new segment after shifting.
}

\author{
Trung Nghia VU 
}
 
\seealso{
\code{\link{hClustAlign}} 
}
\examples{ cat("\n Please see more examples in the vignettes file.")

}
 
 
\keyword{ ~kwd1 }
\keyword{ ~kwd2 } 
