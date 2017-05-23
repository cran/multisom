\name{multisom.stochastic}
\alias{multisom.stochastic}
\title{Multisom for stochastic version}
\description{This function implements the stochastic version of MultiSOM algorithm.
}
\usage{
multisom.stochastic(data = NULL, xheight = 7, xwidth = 7,
                  topo = c("rectangular", "hexagonal"),
                  neighbouhood.fct =c("bubble","gaussian"),
                  dist.fcts = NULL, rlen = 100,alpha = c(0.05, 0.01),
                  radius = c(2, 1.5, 1.2, 1), index = "all")
}
\arguments{
\item{data}{
  the data matrix of observations
  }
\item{xheight}{
  the x-dimension of the map
  }
\item{xwidth}{
  the y-dimension of the map
  }
\item{topo}{
  the topology used to build the grid.The following are permitted:
  \code{"hexagonal"}
  \code{"rectangular"}
  }
\item{neighbouhood.fct}{
  the neighbouhood function type. The following are permitted:
  \code{"gaussian"}
    \code{"bubble"}
   }
\item{dist.fcts}{
  The metric used to determine the distance function. Possible choices are:
   \code{"sumofsquares"}
  \code{"euclidean"}
  \code{"manhattan"}
  \code{"tanimoto"}
}
\item{rlen}{
  the maximum number of iterations to be done
  }
\item{alpha}{learning rate, a vector of two numbers indicating the
  amount of change. Default is to decline linearly from 0.05 to 0.01
  over \code{rlen} updates.}

\item{radius}{the radius of the neighbourhood, either given as a
  single number or a vector (start, stop). If it is given as a single
  number the radius will run from the given number to the negative
  value of that number; as soon as the neighbourhood gets smaller than
  one only the winning unit will be updated.}
\item{index}{
  vector of the index to be calculated. This should be one of : "db", "dunn",
  "silhouette", "ptbiserial", "ch", "cindex", "ratkowsky", "mcclain", "gamma",
  "gplus", "tau", "ccc", "scott", "marriot", "trcovw", "tracew", "friedman",
  "rubin", "ball", "sdbw", "dindex", "hubert", "sv", "xie-beni", "hartigan",
  "ssi", "xu", "rayturi", "pbm", "banfeld", "all" (all indices will be used)}
}

\value{
  \item{All.index.by.layer}{
  Values of indices for each layer.
  }
  \item{Best.nc}{
  Best number of clusters proposed by each index and the corresponding index value.
  }
  \item{Best.partition}{
  Partition that corresponds to the best number of clusters
  }
}
\author{
Sarra Chair and Malika Charrad
}
\examples{
## A real data example

data<-as.matrix(iris[,-c(5)])

res<-multisom.stochastic(data, xheight = 8, xwidth = 8,"hexagonal","gaussian",
                    dist.fcts = NULL, rlen = 100,alpha = c(0.05, 0.01),
                    radius = c(2, 1.5, 1.2, 1),c("db","ratkowsky","dunn"))

res$All.index.by.layer
res$Best.nc

}
\keyword{MultiSOM}
\keyword{Validity Indices}
\keyword{Number of clusters}
\keyword{R packages}
