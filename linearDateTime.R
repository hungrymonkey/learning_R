toUnixTime <- function( dateobj ){
    return (as.numeric(as.POSIXct(dateobj, origin="1970-01-01")))
}

toDateTime <- function( unixtime){
   return (as.POSIXct(unixtime, origin="1970-01-01"))
}
toUnix <- function( datetime ){
   return ( as.numeric(strptime( datetime, "%d-%b-%y,%H:%M:%S") ) )
}
toUnix2 <- function( datetime ){
   return ( as.numeric(strptime( datetime, "%m/%d/%y,%I:%M:%S %p") ) )
}
main <- function(){
   x <- c(toUnix("3-Nov-16,13:15:53" ),toUnix("3-Nov-16,13:16:03:53"))
   y <- c(264.651,264.58)
   f <- approxfun(x,y)
   f(toUnix2("11/3/16,1:16:02 PM"))
}
main()
