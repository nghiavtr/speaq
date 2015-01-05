export2file <-function(X, dirPath="./", fileList="InputFiles.csv",
	 		saveDirPath="outDir"){
	dir.create(saveDirPath)
	FileList=list.files(dirPath);
	inputFileName=paste(dirPath,fileList,sep="");
	inputFile=read.csv(inputFileName);
	outputFile=inputFile[,3];
	for (i in 1:length(outputFile)){
		fn=paste(saveDirPath,"/",as.character(outputFile[i]),sep="");
		write.table(X[i,],fn,append= FALSE,sep=",",
			col.names=FALSE,row.names=FALSE);
	}
}
