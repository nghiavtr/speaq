speaq
=====
### Latest release
[Version 1.2.3](https://github.com/nghiavtr/speaq/releases/download/v1.2.2/speaq_1.2.3.tar.gz)

What's new in version 1.2.3
- Allow to automatically detect the optimal value for maxShift in function dohCluster(). The default setting (maxShift=100) usually works well for NMR spectra. However, for other types of spectra such as chromatograms, this value might be too large. In this new version, when the value of maxShift is set by NULL (maxShift=NULL), CluPA will automatically learn to select the optimal value based on the median Pearson correlation coefficent between spectra. It is worth noting that this metric is significantly effected by high peaks in the spectra, so it might not be the best measure for evaluating alignment performances. However, it is fast for the purpose of detecting the suitable $maxShift$ value. A plot of correlation across the maxShift values also reported if the verbose=TRUE is applied.
- Do scaling data before Fast Fourier Transformation (FFT) cross-correlation in function findShiftStepFFT() if the input spectra are very low abundant (possible in chromatograms).
- Fix small bugs of detectSpecPeaks() when errors happen in function peakDetectionCWT() of MassSpecWavelet package.

#### Older versions of speaq: 
- Version 1.2 and later: https://github.com/nghiavtr/speaq/releases
- Versions 1.0 and 1.1: https://code.google.com/p/speaq/

# How to install "speaq"
### From CRAN using R
```R
chooseCRANmirror() # select a CRAN mirror, for example: 0-cloud
install.packages("speaq")   
library("speaq")
```
### From Github using R:
```R
install.packages("devtools")
library("devtools")
install_github("speaq","nghiavtr")
library("speaq")
```
### View vignette for a practical use
```R
vignette("speaq")
```
### Summary
We introduce a novel suite of informatics tools for the quantitative analysis of NMR metabolomic profile data. The core of the processing cascade is a novel peak alignment algorithm, called hierarchical Cluster-based Peak Alignment (CluPA).

The algorithm aligns a target spectrum to the reference spectrum in a top-down fashion by building a hierarchical cluster tree from peak lists of reference and target spectra and then dividing the spectra into smaller segments based on the most distant clusters of the tree. To reduce the computational time to estimate the spectral misalignment, the method makes use of Fast Fourier Transformation (FFT) cross-correlation. Since the method returns a high-quality alignment, we can propose a simple methodology to study the variability of the NMR spectra. For each aligned NMR data point the ratio of the between-group and within-group sum of squares (BW-ratio) is calculated to quantify the difference in variability between and within predefined groups of NMR spectra. This differential analysis is related to the calculation of the F-statistic or a one-way ANOVA, but without distributional assumptions. Statistical inference based on the BW-ratio is achieved by bootstrapping the null distribution from the experimental data.

Read more in related paper:

Vu TN, Valkenborg D, Smets K, Verwaest KA, Dommisse R, Lemière F, Verschoren A, Goethals B, Laukens K. (2011) An integrated workflow for robust alignment and simplified quantitative analysis of NMR spectrometry data. BMC Bioinformatics. 2011 Oct 20;12:405.

http://www.biomedcentral.com/1471-2105/12/405/
