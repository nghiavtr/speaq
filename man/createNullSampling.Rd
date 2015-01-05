\name{createNullSampling}
\alias{createNullSampling}
 
\title{
Building a null hypothesis data
}
\description{
Create a null sampling data (N times) and write them to a file
}
\usage{
createNullSampling(X, groupLabel, N = 1000, filename = NULL, verbose=TRUE)
}
 
\arguments{
  \item{X}{
The spectral dataset in the matrix format in which each row contains a single sample
}
  \item{groupLabel}{
Group label of samples in the dataset.
}
  \item{N}{
The number of iteration for creating null sample distribution
}
  \item{filename}{
The name of output file.
}
  \item{verbose}{
A boolean value to allow print out process information.
}
}
\details{
Create a null sampling data (N times) and write them to a file 
}
\author{
Trung Nghia VU 
}
\examples{ cat("\n Please see more examples in the vignettes file.")

}
 
 
\keyword{ null hypothesis }

