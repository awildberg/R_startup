# convert 3M or 3K to 3000000 and 3000
convSuffix <- function(str_vec){

  n <- grep( ".+[[:alpha:]|[:space:]].+", str_vec )
  if( length( n ) > 0 ){
    return( paste("Malformed number in string",str_vec[n]) )
    stop()
  }

  str_vec <- sub("k$","e3",str_vec, ignore.case=T); 
  str_vec <- sub("m$","e6",str_vec, ignore.case=T); 
  as.numeric( sub("g$","e9",str_vec, ignore.case=T))

}
message("Loaded convSuffix()")
