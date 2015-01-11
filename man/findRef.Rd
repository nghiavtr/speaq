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
Trung Nghia Vu 
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


cat("\n Find the spectrum reference...")
resFindRef<- findRef(peakList);
refInd <- resFindRef$refInd;

cat("\n Order of spectrum for reference  \n");
for (i in 1:length(resFindRef$orderSpec))
    cat(paste(i, ":",resFindRef$orderSpec[i],sep=""), " ");
    
cat("\n The reference is: ", refInd);

}
  
\keyword{ reference }

