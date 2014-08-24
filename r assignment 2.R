makeVector <- function(x = numeric() {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function(makeCacheMatrix) x
  setmean <- function(mean){
    m <<- mean
    message("In the setmean() now...")
    message("...(i) Environment for mean:")
    print(where("mean"))
    message("...(ii) Environment for m:")
    print(where("m"))
    message("...(iii) Environment for parent of mean:")
    print(parent.env(where("mean")))
    message("Are (ii) and (iii) equal? Yes!")
  } 
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}
