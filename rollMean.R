rollMean <- function(vec, len, partial = FALSE, method=mean, skip.na=F) {
  len <- floor(len)
  tmp <- 0
  if (len > length(vec)) {
    stop(paste("Choose lower range,", len, ">", length(vec)))
  }
  else {
    if (partial == T) {
      tmp <- sapply(1:length(vec), function(i) {
        if (i <= len) {
          method(vec[1:i])
        }
        else {
          method(vec[(i - (len - 1)):i])
        }
      })
    }
    else {
      tmp <- sapply(1:length(vec), function(i) {
        if (i - (len - 1) > 0) {
          method(vec[(i - (len - 1)):i])
        }
        else {
          NA
        }
      })
    }
  }

  if(skip.na==T){ return(tmp[!is.na(tmp)]) } else { return(tmp) }

}
message("Loaded rollMean()")
