### R code from vignette source 'speaq.Rnw'
### Encoding: ASCII

###################################################
### code chunk number 1: Read_data_input
###################################################
# load('wine.RData')
library(speaq)
X  <- read.csv("wine.csv", header = FALSE);    
X <- as.matrix(X);


###################################################
### code chunk number 2: Peak_detection
###################################################
cat("\n detect peaks....");
startTime <- proc.time();
peakListTmp <- detectSpecPeaks(X,
	nDivRange = c(128),                
	scales = seq(1, 16, 2),
	baselineThresh = 50000,
	SNR.Th = -1,
    verbose=FALSE
);

peakList <- peakListTmp; #just a backup for next usage if necessary
endTime <- proc.time();
cat("Peak detection time: ", (endTime[3] - startTime[3])/60, " minutes");


###################################################
### code chunk number 3: Reference_finding
###################################################
refInd = 0;
startTime <- proc.time();
if (refInd == 0){
    cat("\n Find the spectrum reference...")
    resFindRef<- findRef(peakList);
    refInd <- resFindRef$refInd;
    cat("\n Order of spectrum for reference  \n");
    for (i in 1:length(resFindRef$orderSpec))
    {
        cat(paste(i, ":",resFindRef$orderSpec[i],sep=""), " ");
        if (i %% 10 == 0) cat("\n")
    }
    
}
endTime <- proc.time();
cat("\n Finding reference spectrum time: ", (endTime[3] - startTime[3])/60, " minutes");
cat("\n The reference is: ", refInd);


###################################################
### code chunk number 4: Spectral_alignment
###################################################
# Set maxShift
maxShift = 50;

Y <- dohCluster(X,
                peakList = peakList,
                refInd = refInd,
                maxShift  = maxShift,
                acceptLostPeak = TRUE, verbose=FALSE);



###################################################
### code chunk number 5: Spectral_segment_alignment
###################################################

Yc <- dohClusterCustommedSegments(X,
                                 peakList = peakList,
                                 refInd = refInd,
                                 maxShift  = maxShift,
                                 acceptLostPeak = TRUE,
                                 infoFilename = "Wineinfo.csv",
                                 minSegSize = 128,
                                 verbose=FALSE)
                                 


###################################################
### code chunk number 6: Spectral_plots
###################################################
drawSpec(Y,
        startP=7000,
        endP=8000
        );


###################################################
### code chunk number 7: spectral_plots_limited_height
###################################################
drawSpec(Y,
        startP=7000,
        endP=8000,
        highBound = 5e+6,
        lowBound = -1000);


###################################################
### code chunk number 8: Quantitative_analysis
###################################################
N = 100;
alpha = 0.05;
wineLabel <- c("white","red","red","white","red","white","red","rose","red","red","red","white","red","white","red","red","white","rose","white","red","red","red","red","red","red","red","red","red","red","red","red","red","red","red","red","red","red","red","red","red");
wineLabel <- as.factor(wineLabel)

U1 = Y[which(wineLabel=="white"),]
U2 = Y[which(wineLabel=="red"),]
U = rbind(U1, U2)
Ulabel <- c("while","while","while","while","while","while","while",
             "red","red","red","red","red","red","red","red","red","red",
             "red","red","red","red","red","red","red","red","red","red",
             "red","red","red","red","red","red","red","red","red","red",
             "red");
Ulabel <- as.factor(Ulabel);
# find the BW-statistic
BW = BWR(U, Ulabel);

# create sampled H0 and export to file
H0 = createNullSampling(U, Ulabel, N = N,verbose=FALSE)

#compute percentile of alpha
perc = double(ncol(U));
alpha_corr = alpha/sum(returnLocalMaxima(U[2,])$pkMax>50000);
for (i in 1 : length(perc)){    
    perc[i] = quantile(H0[,i],1-alpha_corr, type = 3);
}


###################################################
### code chunk number 9: drawBW_1
###################################################
drawBW(BW, perc,U,startP = 7580, endP = 7690, groupLabel = Ulabel) #b


###################################################
### code chunk number 10: drawBW_2
###################################################
drawBW(BW, perc,U,startP = 4180, endP = 4215, groupLabel = Ulabel) #c


###################################################
### code chunk number 11: drawBW_3
###################################################
drawBW(BW, perc,U,startP = 6200, endP = 6235, groupLabel = Ulabel) #d


