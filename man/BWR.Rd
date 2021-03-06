\name{BWR}
\alias{BWR}
 
\title{
BW ratio calculation
}
\description{
Compute the BW ratios from data groups
}
\usage{
BWR(X,
    groupLabel)
}
 
\arguments{
  \item{X}{
The spectral dataset in the matrix format in which each row contains a single sample
}
  \item{groupLabel}{
Group label of samples in the dataset.
}
}
\details{
Compute the BW ratios from data groups 
}
\value{
Return BW ratio 
}
\author{
Trung Nghia Vu 
}

\seealso{
\code{\link{createNullSampling}}    
}
\examples{
res=makeSimulatedData();
X=res$data;
groupLabel=res$label;



peakList <- detectSpecPeaks(X,
  nDivRange = c(128),                
  scales = seq(1, 16, 2),
  baselineThresh = 50000,
  SNR.Th = -1,
    verbose=FALSE
);


resFindRef<- findRef(peakList);
refInd <- resFindRef$refInd;


maxShift = 50;
Y <- dohCluster(X,
                peakList = peakList,
                refInd = refInd,
                maxShift  = maxShift,
                acceptLostPeak = TRUE, verbose=FALSE);

# find the BW-statistic
BW = BWR(Y, groupLabel);

}
 
 
\keyword{ BW }

