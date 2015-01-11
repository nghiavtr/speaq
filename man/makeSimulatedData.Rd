\name{makeSimulatedData}
\alias{makeSimulatedData}
\title{
Create a simulated NMR spectral data
}
\description{
Generate an NMR spectral data for testing.
}
\usage{
makeSimulatedData()
}
\details{
We generate a NMR spectral data sets that contains two group A and group B. One  at around 300 has a single tip and the other at around 600 has double tips that intentionally contains biological variation. First, a single spectrum is created based on statistic information (mean, standard deviation of intensity) achieved from real NMR spectra. Then, we randomely shift the spectrum to maximum 50 data points and add some biological and technical variations to each point intensity to the spectrum to create a new spectrum. The collection of spectra from each group is the final dataset.
}
\value{
\item{data }{ The simulated NMR spectral data matrix}
\item{label }{ Group label of each spectrum}

}
\author{
Trung Nghia Vu
}

\examples{
res=makeSimulatedData();
X=res$data;
groupLabel=res$label;

}

\keyword{ Data }
\keyword{ Simulated }
