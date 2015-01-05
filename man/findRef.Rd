\name{findRef}
\alias{findRef}
 
\title{
Reference finding
}
\description{
This function is to heuristically detect a reference spectrum.
}
\usage{
findRef(peakList)
}
 
\arguments{
  \item{peakList}{
The peak lists of the spectra.
}
}
\details{ 
This function is to heuristically detect a reference spectrum, see the reference for more details.

}
\value{
 
\item{refInd }{ The index of the reference spectrum found by the algorithm}
\item{orderSpec }{ A sorted array of the spectra by their goodness values}

}
\references{
Vu TN, Valkenborg D, Smets K, Verwaest KA, Dommisse R, Lemie`re F, Verschoren A, Goethals B, Laukens K. (2011) An integrated workflow for robust alignment and simplified quantitative analysis of NMR spectrometry data. BMC Bioinformatics. 2011 Oct 20;12:405. 
}
\author{
Trung Nghia VU 
}

\examples{ cat("\n Please see more examples in the vignettes file.")

}
  
\keyword{ reference }

