\name{findShiftStepFFT}
\alias{findShiftStepFFT}
 
\title{
Finding the shift-step by using Fast Fourier Transform cross-correlation
}
\description{
This function uses Fast Fourier Transform cross-correlation to find out the shift step between two spectra.
}
\usage{
findShiftStepFFT(refSpec,
        tarSpec,
        maxShift = 0)
}
 
\arguments{
  \item{refSpec}{
The reference spectrum.
}
  \item{tarSpec}{
The target spectrum which needs to be aligned.
}
  \item{maxShift}{
The maximum number of points for a shift step. If this value is zero, the algorithm will check on the whole length of the spectra.
}
}
\details{
 Finding the shift-step by using Fast Fourier Transform cross-correlation
}
\value{ 
\item{corValue }{The best correlation value}
\item{stepAdj }{ The shift step found by the algorithm}
}
\author{
Trung Nghia Vu 
}

\seealso{
 \code{\link{hClustAlign}}
}
\examples{ 
res=makeSimulatedData();
X=res$data;
groupLabel=res$label;


maxShift=50;
refSpec=X[1,];
tarSpec=X[2,];
adj=findShiftStepFFT(refSpec, tarSpec,maxShift=maxShift);

}
 
 
\keyword{ FFT }
\keyword{ spectrum shift }
\keyword{ cross-correlation } 
