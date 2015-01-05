\name{dohClusterCustommedSegments}
\alias{dohClusterCustommedSegments}
 
\title{
Use CluPA for alignment with additional information
}
\description{
This function integrates some additional information from user such as references for each specific segment, segment ignorance, maximum step size..
to align spectra using CluPA. 

}
\usage{
dohClusterCustommedSegments(X,
                            peakList,
                            refInd,
                            maxShift,
                            acceptLostPeak = TRUE,
                            infoFilename,
                            minSegSize = 128,
                            verbose=TRUE)
}
 
\arguments{
  \item{X}{
The spectral dataset in matrix format in which each row contains a single sample.
}
  \item{peakList}{
The peak lists of the spectra.
}
  \item{refInd}{
The index of the reference spectrum.
}
  \item{maxShift}{
The maximum number of points for a shift step.
}
  \item{acceptLostPeak}{
This is an option for users, TRUE is the default value. If the users believe that all the peaks in the peak list are true positive, change it to FALSE.
}
  \item{infoFilename}{
The name of the file containing the additional information from the users in the CSV format with a header. 

}
  \item{minSegSize}{
The minimum size of the segments which could be considered for alignment.
}
  \item{verbose}{
A boolean value to allow print out process information.
}
}
\details{
Each line of the infoFilename includes 5 numbers separated by commas, for instance:

#

begin,end,forAlign,ref,maxShift

3600,4000,0,0,0

5600,6200,1,0,50

#

- begin: the starting point of the segment.

- end: the end point of the segment.

- forAlign: the segment is aligned (1) or not (0).

- ref: the index of the reference spectrum. If 0, the algorithm will select the reference found by the reference finding step.

- maxShift: the maximum number of points of a shift to left/right.

It is worth to note that only segments with forAlign=1 will be taken into account for spectral alignment. 
}
\value{
 
The aligned spectral segments.
}

\author{
Trung Nghia VU 
}

\seealso{
\code{\link{dohCluster}}  
}
\examples{ cat("\n Please see more examples in the vignettes file.")

}
 
 
\keyword{ segment }
\keyword{ CluPA }
\keyword{ alignment } 
