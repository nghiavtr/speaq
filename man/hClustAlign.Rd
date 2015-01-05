\name{hClustAlign}
\alias{hClustAlign}
 
\title{
CluPA function for two spectra.
}
\description{
This function implements the idea of the CluPA algorithm to align the target spectrum against the reference spectrum.
}
\usage{
hClustAlign(refSpec,
	    tarSpec,
	    peakList,
	    peakLabel,
	    startP,
	    endP,
	    distanceMethod = "average",
	    maxShift = 0,
	    acceptLostPeak = FALSE)
}
 
\arguments{
  \item{refSpec}{
The reference spectrum.
}
  \item{tarSpec}{
The target spectrum.
}
  \item{peakList}{
List of peaks of the both reference and target spectra
}
  \item{peakLabel}{
The list of the labels of the peaks
}
  \item{startP}{
The starting point of the segment.
}
  \item{endP}{
The ending point of the segment.
}
  \item{distanceMethod}{
The distance method for the hierarchial clustering algorithm.
}
  \item{maxShift}{
The maximum number of points for a shift step.
}
  \item{acceptLostPeak}{
This is an option for users, TRUE is the default value. If the users believe that all the peaks in the peak list are true positive, change it to FALSE.
}
}
\details{
 This function implements the idea of the CluPA algorithm to align the target spectrum against the reference spectrum.
}
\value{
 
\item{tarSpec }{The target spectrum after alignment}
\item{peakList }{The peak list after alignment}

}
\references{
 Vu TN, Valkenborg D, Smets K, Verwaest KA, Dommisse R, Lemie`re F, Verschoren A, Goethals B, Laukens K. (2011) An integrated workflow for robust alignment and simplified quantitative analysis of NMR spectrometry data. BMC Bioinformatics. 2011 Oct 20;12:405.
}
\author{
 Trung Nghia VU
}

\seealso{
 \code{\link{dohCluster}}
}
\examples{ cat("\n Please see more examples in the vignettes file.")

}
 
 
\keyword{ CluPA }
\keyword{ Alignment } 

