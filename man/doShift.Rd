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
Trung Nghia Vu 
}
 
\seealso{
\code{\link{hClustAlign},\link{findShiftStepFFT} } 
}
\examples{ 

res=makeSimulatedData();
X=res$data;
groupLabel=res$label;


maxShift=50;
refSpec=X[1,];
tarSpec=X[2,];
adj=findShiftStepFFT(refSpec, tarSpec,maxShift=maxShift);
newTarSpec=doShift(tarSpec,adj$stepAdj);

}
 
 
\keyword{ ~kwd1 }
\keyword{ ~kwd2 } 
