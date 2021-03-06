findShiftStepFFT<-function (refSpec, tarSpec, maxShift = 0, scale=NULL) 
{
  #do scaling if the spectra are low abundant
  refScale=median(abs(refSpec)); if (refScale==0) refScale=mean(abs(refSpec))
  tarScale=median(abs(tarSpec)); if (tarScale==0) tarScale=mean(abs(tarSpec))
  scaleFactor=10^round(-log10(min(tarScale,refScale)))
  if (is.null(scale) & scaleFactor > 1) scale=TRUE
  if (is.null(scale)) scale=FALSE
  if (scale){
    refScale=refScale*scaleFactor
    tarScale=tarScale*scaleFactor
  }

  
  M = length(refSpec)
  zeroAdd = 2^ceiling(log2(M)) - M
  r = c(refSpec*1e6, double(zeroAdd))
  s = c(tarSpec*1e6, double(zeroAdd))
  M = M + zeroAdd
  fftR = fft(r)
  fftS = fft(s)
  R = fftR * Conj(fftS)
  R = R/M
  rev = fft(R, inverse = TRUE)/length(R)
  vals = Re(rev)
  maxi = -1
  maxpos = 1
  lenVals <- length(vals)
  if ((maxShift == 0) || (maxShift > M)) 
    maxShift = M
  if (anyNA(vals)) {
    lag = 0
    return(list(corValue = maxi, stepAdj = lag))
  }
  for (i in 1:maxShift) {
    if (vals[i] > maxi) {
      maxi = vals[i]
      maxpos = i
    }
    if (vals[lenVals - i + 1] > maxi) {
      maxi = vals[lenVals - i + 1]
      maxpos = lenVals - i + 1
    }
  }
  
  if (maxi < 0.1) {
    lag = 0
    return(list(corValue = maxi, stepAdj = lag))
  }
  if (maxpos > lenVals/2) 
    lag = maxpos - lenVals - 1
  else lag = maxpos - 1
  return(list(corValue = maxi, stepAdj = lag))
}
