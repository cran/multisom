\name{BatchSOM}
\alias{BatchSOM}
\title{Self-Organizing Map: Batch version}
\description{
This function implements the batch version of the kohonen algorithm
}
\usage{
BatchSOM(data,grid = somgrid(),min.radius=0.0001,
         max.radius=0.002,maxit=1000,
         init=c("random","sample","linear"),
         radius.type=c("gaussian","bubble","cutgauss","ep"))
}
\arguments{
\item{data}{
  data to be used
  }
\item{grid}{
  a grid for the representatives.The numbers of nodes should be approximately equal to 5*sqrt(n), which n denotes the number of sample.
  }
\item{min.radius}{
  the minimum neighbourhood radius
  }
\item{max.radius}{
  the maximum neighbourhood radius
  }
\item{maxit}{
  the maximum number of iterations to be done
  }
\item{init}{
  the method to be used to initialize the prototypes.The following
    are permitted:
    \code{"random"} uses random draws from N(0,1);
    \code{"sample"} uses a radom sample from the data;
    \code{"linear"} uses the linear grids upon the first two principle
    components direction.See package som.
  }
  \item{radius.type}{
  the neighborhood function type. The following are permitted:
    \code{"gaussian"}
    \code{"bubble"}
    \code{"cutgauss"}
    \code{"ep"}
  }
}

\value{
  \item{classif}{
  a vector of integer indicating to which unit each observation has been assigned
  }
  \item{codes}{
  a matrix of code vectors
   }
  \item{grid}{
  the grid, an object of class "somgrid"
   }

}
\author{
Sarra Chair and Malika Charrad
}
\references{
  Kohonen, T. (1995) \emph{Self-Organizing Maps.} Springer-Verlag.\cr

  Brian Ripley, William Venables (2015), class: Functions for Classification,
  URL https://cran.r-project.org/package=class.\cr

  Jun Yan (2010), som: Self-Organizing Map, URL https://cran.r-project.org/package=som.\cr
}
\examples{
data<-iris[,-c(5)]
BatchSOM(data,grid = somgrid(7,7,"hexagonal"),min.radius=0.0001,
              max.radius=0.002,maxit=1000,"random","gaussian")

}
\keyword{Clustering}
