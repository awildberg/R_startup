# gives TRUE for all c( 234, 2.12, .9213, -312.4, -234, -.8234, "324", "34.4", "-57", NA ),
# but FALSE for c(23, 234, "NA" ) or c( 24h23, "34j32" )
# use in situations like aggregate with different class columns where we want to
# do certain calculations on character and numeric, this decides which function to use
# in e.g. function(x) 'if'( isCastableNumeric(x),sum(as.numeric(x)),unique(as.character(x)) )

isCastableNumeric <- function( x ) all( is.na(x) | 
  grepl( "^-?[0-9]*\\.*[0-9]+$|^[0-9]*\\.*[0-9]+$", x ) )
