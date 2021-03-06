\name{genSeq}
\alias{genSeq}
\title{Simulate a DNA alignment on the tree under a model}
\usage{
genSeq(tree, l=1000, Q=NULL, rate=1, format="DNAbin", ...)
}
\arguments{
	\item{tree}{object of class \code{"phylo"}.}
	\item{l}{length of desired sequences.}
	\item{Q}{transition matrix for the simulation. Row and column names (\code{c("a","c","g","t")}, although not necessarily in that order) should be provided. If \code{NULL}, a single rate is assumed.}
	\item{rate}{multiplier for \code{Q}, or a vector for Gamma rate heterogeneity.}
	\item{format}{format of the output object. Can be \code{"DNAbin"}, \code{"phyDat"}, or \code{"matrix"}.}
	\item{...}{optional arguments.}
}
\description{
	Simulates DNA sequence on \code{tree} under the specified model. Uses \code{\link{sim.Mk}} internally.
}
\value{
	An object of class \code{"DNAbin"} or \code{"phyDat"}, or a matrix of nucleotides.
}
\references{
	Revell, L. J. (2012) phytools: An R package for phylogenetic comparative biology (and other things). \emph{Methods Ecol. Evol.}, \bold{3}, 217-223.
}
\author{Liam Revell \email{liam.revell@umb.edu}}
\examples{
## simulate gamma rate heterogeneity
tree<-pbtree(n=26,tip.label=LETTERS,scale=0.1)
gg<-rgamma(n=100,shape=0.25,rate=0.25)
dna<-genSeq(tree,l=100,rate=gg)
}
\keyword{phylogenetics}
\keyword{simulation}

