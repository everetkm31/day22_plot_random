# Plot.Random.r
#
# purpose: a function that will generate a random sample of normal deviates, plots a histogram, and provides "other stuff"

## Stuff from wednesday...
plotrandomD <-  function(numpts=100) {
  hist(rnorm(numpts))
}
plotrandomD()

##########
# build in more flexibility
plotrandom_normals <- function(numpts=1000, mu=24, sigma=3, numbins=15,
                               title = "My Histogram, Oct 14 2022",
                               meanColor= "purple",
                               seed=8675309) {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins, main=title)
  abline(v=mean_x, col=meanColor)
  mean_x # this makes it display the mean value as well as the histogram, note: r will not display 
  # more than one value, so if we ask for sd as well as mean, it will not give it to us, rather,
  # it only gives us the last thing we asked for. the work around for this is to create a list
}
plotrandom_normals()

# how it looks with the list
plotrandom_normals <- function(numpts=1000, mu=24, sigma=3, numbins=15,
                               title = "My Histogram, Oct 14 2022",
                               meanColor= "purple",
                               seed=8675309) {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins, main=title)
  abline(v=mean_x, col=meanColor)
  list(Mean_X = mean_x,
       StdDev_x <- sd(rand_x),
       RandomValues <- rand_x)
}
plotrandom_normals()





















