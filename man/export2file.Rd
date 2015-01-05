\name{export2file}
\alias{export2file}
 
\title{
Export spectra to files
}
\description{
This function allows to export each spectrum to a single file in caMassClass format.
}
\usage{
export2file(X, dirPath="./", fileList="InputFiles.csv",saveDirPath="outDir")
}
 
\arguments{
  \item{X}{
The spectral dataset in matrix format in which each row contains a single sample
}
  \item{dirPath}{
The directory containing "fileList", the information files of spectra.
}
  \item{fileList}{
The name of the information file. The information file is a CSV file with header, including three columns: samplenames, label, filenames. This follows the input file format of caMassClass package.
}
  \item{saveDirPath}{
The path to the new directory containing the exported files.
}
}
\details{
This function allows to export each spectrum to a single file 
}

\author{
Trung Nghia VU  
}
\examples{ cat("\n Please see more examples in the vignettes file.")

}
 
 
\keyword{ export }
\keyword{ caMassClass } 
