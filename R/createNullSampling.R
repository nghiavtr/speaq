createNullSampling <-function(X, groupLabel, N=1000, 
      filename=NULL, verbose=TRUE){

  groupNum=length(levels(groupLabel));
  samplePool=X;  
  groupMean=list();
  
  for (i in 1:groupNum){
    groupLabeli=which(groupLabel==levels(groupLabel)[i]);
    Xi=X[groupLabeli,]
    mi=colMeans(Xi);
    groupMean[[i]]=mi;    
  }  
  
  for (i in 1:nrow(samplePool)){
    samplePool[i,]=
      X[i,]-groupMean[[which(levels(groupLabel)==groupLabel[i])]];
  }
  
  L=nrow(X);    
  H0=matrix(data=0,nrow=N,ncol=ncol(X));
  
  for(i in 1 : N){
    if (verbose) cat(i,"\n");
    index=sample(L);    
    H0[i,]=BWR(samplePool[index,],groupLabel);
  }
  
  if (!is.null(filename))
     write.csv(H0,filename,row.names=FALSE,col.names=FALSE);
  return(H0);
}
