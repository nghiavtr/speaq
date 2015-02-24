\name{speaq-package}
\alias{speaq-package}
\alias{speaq}
\docType{package}
\title{
Tools for Nuclear Magnetic Resonance (NMR) spectrum alignment and quantitative analysis.
}
\description{
We introduce a novel suite of informatics tools for the quantitative analysis of NMR metabolomic profile data. The core of the processing cascade is a novel peak alignment algorithm, called hierarchical Cluster-based Peak Alignment (CluPA). The algorithm aligns a target spectrum to the reference spectrum in a top-down fashion by building a hierarchical cluster tree from peak lists of reference and target spectra and then dividing the spectra into smaller segments based on the most distant clusters of the tree. To reduce the computational time to estimate the spectral misalignment, the method makes use of Fast Fourier Transformation (FFT) cross-correlation. Since the method returns a high-quality alignment, we can propose a simple methodology to study the variability of the NMR spectra. For each aligned NMR data point the ratio of the between-group and within-group sum of squares (BW-ratio) is calculated to quantify the difference in variability between and within predefined groups of NMR spectra. This differential analysis is related to the calculation of the F-statistic or a one-way ANOVA, but without distributional assumptions. Statistical inference based on the BW-ratio is achieved by bootstrapping the null distribution from the experimental data. Related publication is available at http://www.biomedcentral.com/1471-2105/12/405/.
}
\details{
\tabular{ll}{
Package: \tab speaq\cr
Type: \tab Package\cr
Version: \tab 1.2.1\cr
Date: \tab 2015-24-02\cr
License: \tab Apache License 2.0\cr
LazyLoad: \tab yes\cr
}
}
\author{
Trung Nghia Vu, Kris Laukens and Dirk Valkenborg

Maintainer: Trung Nghia Vu <nghiavtr@gmail.com>

}
\examples{ 
#load testing data	
res=makeSimulatedData();
X=res$data;
groupLabel=res$label;

# read manual to see how to run detectSpecPeaks, findRef, dohCluster, etc 

}

\references{
Vu TN, Valkenborg D, Smets K, Verwaest KA, Dommisse R, Lemie`re F, Verschoren A, Goethals B, Laukens K. (2011) An integrated workflow for robust alignment and simplified quantitative analysis of NMR spectrometry data. BMC Bioinformatics. 2011 Oct 20;12:405.
}

\keyword{ package }


