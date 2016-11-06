\name{multisom.batch}
\alias{multisom.batch}
\title{MultiSOM for batch version}
\description{This function implements the batch version of MultiSOM algorithm.
}
\usage{
multisom.batch(data= NULL,xheight,xwidth,topo=c("rectangular",
           "hexagonal"),min.radius,max.radius,maxit=1000,
           init=c("random","sample","linear"),radius.type=
           c("gaussian","bubble","cutgauss","ep"),index="all")
}
\arguments{
\item{data}{
  data to be used
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
    components direction.
  }
  \item{radius.type}{
  the neighborhood function type. The following are permitted:
    \code{"gaussian"}
    \code{"bubble"}
    \code{"cutgauss"}
    \code{"ep"}
  }
\item{index}{
  vector of the index to be calculated. This should be one of : "db", "dunn",
  "silhouette", "ptbiserial", "ch", "cindex", "ratkowsky", "mcclain", "gamma",
  "gplus", "tau", "ccc", "scott", "marriot", "trcovw", "tracew", "friedman",
  "rubin", "ball", "sdbw", "dindex", "hubert", "sv", "xie-beni", "hartigan",
  "ssi", "xu", "rayturi", "pbm", "banfeld", "all" (all indices will be used)}
}

\details{
\tabular{ll}{
      \bold{Index}      \tab   \bold{Optimal number of clusters} \cr
1.  "db" or "all"                 \tab Minimum value of the index \cr
    (Davies and Bouldin 1979)\cr
2.  "dunn" or "all"               \tab Maximum value of the index \cr
    (Dunn 1974)\cr
3.  "silhouette" or "all"         \tab Maximum value of the index \cr
    (Rousseeuw 1987)\cr
4.  "ptbiserial" or "all"         \tab Maximum value of the index \cr
    (Milligan 1980, 1981)\cr
5.  "ch" or "all"                 \tab Maximum value of the index \cr
    (Calinski and Harabasz 1974)\cr
6.  "cindex" or "all"             \tab Minimum value of the index \cr
    (Hubert and Levin 1976)\cr
7.  "ratkowsky" or "all"          \tab Maximum value of the index \cr
    (Ratkowsky and Lance 1978)\cr
8.  "mcclain" or "all"            \tab Minimum value of the index \cr
    (McClain and Rao 1975)\cr
9.  "gamma" or "all"              \tab Maximum value of the index \cr
    (Baker and Hubert 1975)\cr
10. "gplus" or "all"              \tab Minimum value of the index \cr
    (Rohlf 1974) (Milligan 1981)\cr
11. "tau" or "all"                \tab Maximum value of the index \cr
    (Rohlf 1974) (Milligan 1981)\cr
12. "ccc" or "all"                \tab Maximum value of the index \cr
    (Sarle 1983)\cr
13. "scott" or "all"              \tab Max. difference between hierarchy \cr
    (Scott and Symons 1971)       \tab levels of the index \cr
14. "marriot" or "all"            \tab Max. value of second differences\cr
    (Marriot 1971)                \tab  between levels of the index \cr
15. "trcovw" or "all"             \tab Max. difference between hierarchy \cr
    (Milligan and Cooper 1985)    \tab levels of the index \cr
16. "tracew" or "all"             \tab Max. value of absolute second \cr
    (Milligan and Cooper 1985)    \tab differences between levels of the index\cr
17. "friedman" or "all"           \tab Max. difference between hierarchy \cr
    (Friedman and Rubin 1967)     \tab levels of the index \cr
18. "rubin" or "all"              \tab Min. value of second differences \cr
    (Friedman and Rubin 1967)     \tab between levels of the index \cr
19. "ball" or "all"               \tab Max. difference between hierarchy\cr
    (Ball and Hall 1965)          \tab  levels of the index \cr
20. "sdbw" or "all"                \tab Minimum value of the index \cr
    (Halkidi and Vazirgiannis 2001)\cr
21. "dindex" or "all"             \tab Graphical method\cr
    (Lebart et al. 2000)\cr
22. "hubert" or "all"             \tab Graphical method \cr
    (Hubert and Arabie 1985)\cr
23. "sv" or "all"                 \tab Maximum value of the index\cr
    (Zalik and Zalik, 2011)\cr
24. "xie-beni" or "all"           \tab Minimum value of the index \cr
    (Xie and Beni 1991)\cr
25. "hartigan" or "all"           \tab Maximum difference between \cr
    (Hartigan 1975)               \tab hierarchy levels of the index\cr
26. "ssi" or "all"                \tab Maximum value of the index \cr
    (Dolnicar,Grabler and Mazanec 1999)\cr
27. "xu" or "all"                 \tab Max. value of second differences\cr
    (Xu 1997)                     \tab between levels of the index\cr
28. "rayturi" or "all"            \tab Minimum value of the index \cr
    (Ray and Turi 1999)\cr
29. "pbm" or "all"                \tab Maximum value of the index \cr
    (Bandyopadhyay,Pakhira and Maulik 2004)\cr
30. "banfeld" or "all"            \tab Minimum value of the index \cr
    (Banield and Raftery 1974)\cr
 }
}
\value{
  \item{All.index.by.layer}{
  Values of indices for each layer
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
\references{
Charrad M., Ghazzali N., Boiteau V., Niknafs A. (2014). "NbClust: An R Package for Determining the Relevant Number of Clusters in a Data Set.",
        "Journal of Statistical Software, 61(6), 1-36.", "URL http://www.jstatsoft.org/v61/i06/".\cr

Khanchouch, I., Charrad, M., & Limam, M. (2014). A Comparative Study of Multi-SOM Algorithms for Determining the Optimal Number of Clusters. Journal of Statistical Software, 61(6), 1-36.
}
\examples{

## A 4-dimensional example

set.seed(1)

data<-rbind(matrix(rnorm(100,sd=0.3),ncol=2),
         matrix(rnorm(100,mean=2,sd=0.3),ncol=2),
         matrix(rnorm(100,mean=4,sd=0.3),ncol=2),
         matrix(rnorm(100,mean=8,sd=0.3),ncol=2))

res<- multisom.batch(data,xheight= 8, xwidth= 8,"hexagonal",
                min.radius=0.00010,max.radius=0.002,
                maxit=1000,"random","gaussian","ch")

res$All.index.by.layer
res$Best.nc
res$Best.partition

}
\keyword{MultiSOM}
\keyword{Validity Indices}
\keyword{Number of clusters}
\keyword{R packages}
