# convert 3M or 3K to 3000000 and 3000
convSuffix <- function(str_vec){

  n <- grep( ".+[[:alpha:]|[:space:]].+", str_vec )
  if( length( n ) > 0 ){
    return(paste("Malformed number in string",str_vec[n]))
    stop()
  }

  sapply( str_vec, function(x){
    x<-sub("k$","e3",x, ignore.case=T); 
    x<-sub("m$","e6",x, ignore.case=T); 
    as.numeric( sub("g$","e9",x, ignore.case=T))
  } )

}
