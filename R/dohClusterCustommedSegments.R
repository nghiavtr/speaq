dohClusterCustommedSegments <-function(X, peakList, refInd, maxShift,
     acceptLostPeak=TRUE, infoFilename, minSegSize=128,verbose=TRUE){

  myinfo=read.csv(infoFilename,header=TRUE,sep=",");
  myinfo=as.matrix(myinfo);

  if (myinfo[1,1]>minSegSize) 
    mysegments=c(1,myinfo[1,1]-1,0,0,0) else mysegments=c();
  i = 0;
  if (nrow(myinfo)>1){   
   for (i in 1:(nrow(myinfo)-1)){
    mysegments=c(mysegments,c(myinfo[i,]))
    if (myinfo[i+1,1]-myinfo[i,2]>minSegSize)
      mysegments=c(mysegments,c(myinfo[i,2]+1,myinfo[i+1,1]-1,0,0,0))
   }
  }
  mysegments=c(mysegments,c(myinfo[i+1,]))  

  if (ncol(X)-myinfo[i+1,2]-1>minSegSize) 
    mysegments=c(mysegments,c(myinfo[i+1,2]+1,ncol(X),0,0,0))

  mysegments=matrix(data=mysegments,nrow=length(mysegments)/5,
              ncol=5,byrow=TRUE,dimnames=NULL)
  
  mysegments[which(mysegments[,4]==0),4]=refInd;
  mysegments[which(mysegments[,5]==0),5]=maxShift;
  
  if (sum(mysegments[,3]!=0)==0){
    cat("\n No segments are set for alignment! Please put 
        at least 1 row in ",infoFilename, " containing forAlign=1.")
    return;
  }

  Y=X;

  for (i in 1:nrow(mysegments))
  if (mysegments[i,3]!=0)
  {
    if (verbose)
    cat("\n Doing alignment a segment from ",
        mysegments[i,1]," to ",mysegments[i,2]," ...");

    segmentpeakList=peakList;
    for (j in 1:length(peakList)){
      segmentpeakList[[j]]=
          findSegPeakList(peakList[[j]],mysegments[i,1],mysegments[i,2]);
    }    
    Y[,c(mysegments[i,1]:mysegments[i,2])]=
    dohCluster(X[,c(mysegments[i,1]:mysegments[i,2])],peakList=segmentpeakList,
        refInd=mysegments[i,4],maxShift =mysegments[i,5],
        acceptLostPeak=acceptLostPeak, verbose=verbose);    
  }else{
    if (verbose)
      cat("\n The segment ",
      mysegments[i,1],"-",mysegments[i,2], " is not aligned");
  }  
 return(Y)
}