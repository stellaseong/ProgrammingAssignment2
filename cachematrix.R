## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {



}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


weightmedian <- function(directory, day, id=1:3) {
files_list <- list.files(directory, full.names=TRUE) #creates a list of files
dat <- data.frame() #creates an empty data frame
for (i in id) { #loops through the files, rbinding them together
dat <- rbind(dat, read.csv(files_list[i]))
}
dat_subset <- dat[which(dat[, "Day"] == day),] #subsets the rows that match the 'day' argument
median(dat_subset[, "Weight"], na.rm=TRUE) #identifies the median weight
#while stripping out the NAs
}
