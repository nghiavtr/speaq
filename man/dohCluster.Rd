\name{dohCluster}
\alias{dohCluster}
 
\title{
CluPA function for multiple spectra.
}
\description{
Use CluPA for alignment for multiple spectra.
}
\usage{
dohCluster(X,
          peakList,
          refInd = 0,
          maxShift = 100,
          acceptLostPeak = TRUE,
          verbose=TRUE)
}
 
\arguments{
  \item{X}{
The spectral dataset in the matrix format in which each row contains a single sample
}
  \item{peakList}{
The peak lists of the spectra
}
  \item{refInd}{
The index of the reference spectrum.
}
  \item{maxShift}{
The maximum number of the points for a shift step.
}
  \item{acceptLostPeak}{
This is an option for users, TRUE is the default value. If the users believe that all the peaks in the peak list are true positive, change it to FALSE.
}
  \item{verbose}{
A boolean value to allow print out process information.
}
}
\details{
Use CluPA for alignment for multiple spectra. 
}
\value{
 
The aligned spectra.
}
\author{
Trung Nghia VU 
}

 

\seealso{
\code{\link{dohClusterCustommedSegments}}   
}
\examples{ cat("\n Please see more examples in the vignettes file.")

}
 
 
\keyword{ CluPA }
\keyword{ alignment } 
