\name{returnLocalMaxima}
\alias{returnLocalMaxima}
 
\title{
Local maximum detection
}
\description{
Find and return local maximum of a single spectrum.
}
\usage{
returnLocalMaxima(spectrum)
}
 
\arguments{
  \item{spectrum}{
A spectral sample in the vector format.
}
}
\details{
Find and return local maximum of a single spectrum. 
}
\value{
 
\item{locMax }{ Locations of the found local maximum peaks}
\item{pkMax }{ Intensities of the found local maxumum peaks}

}
\author{
Trung Nghia Vu 
}

\examples{ 

res=makeSimulatedData();
X=res$data;
groupLabel=res$label;


returnLocalMaxima(X[2,])	

}
 
