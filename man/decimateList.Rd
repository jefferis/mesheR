% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/remeshList.r
\name{decimateList}
\alias{decimateList}
\title{decimate a list of registered meshes (with corresponding vertices)}
\usage{
decimateList(matchlist, reference = 1, random = FALSE, tarface = NULL,
  percent = NULL, edgeLength = NULL, topo = FALSE, quality = TRUE,
  bound = FALSE, optiplace = TRUE, scaleindi = TRUE, normcheck = FALSE,
  safeheap = FALSE, qthresh = 0.3, boundweight = 1, normalthr = pi/2,
  silent = FALSE)
}
\arguments{
\item{matchlist}{a list of meshes with corresponding vertices (same amount and pseudo-homologous positions), e.g. registered with \code{\link{gaussMatch}}. Meshes do not need to be aligned.}

\item{reference}{integer: select the specimen the to which the decimation is to applied initially.}

\item{random}{if TRUE, a random specimen is selected for initial decimation}

\item{tarface}{Integer: set number of target faces.}

\item{percent}{Numeric: between 0 and 1. Set amount of reduction relative to
existing face number. Overrides tarface argument.}

\item{edgeLength}{Numeric: tries to decimate according to a target mean edge
length. Under the assumption of regular triangles, the edges are half as
long by dividing the triangle into 4 regular smaller triangles.}

\item{topo}{logical: if TRUE, mesh topology is preserved.}

\item{quality}{logical: if TRUE, vertex quality is considered.}

\item{bound}{logical: if TRUE, mesh boundary is preserved.}

\item{optiplace}{logical: if TRUE, mesh boundary is preserved.}

\item{scaleindi}{logical: if TRUE, decimatiion is scale independent.}

\item{normcheck}{logical: if TRUE, normal directions are considered.}

\item{safeheap}{logical: if TRUE, safeheap update option enabled.}

\item{qthresh}{numeric: Quality threshold for decimation process.}

\item{boundweight}{numeric: Weight assigned to mesh boundaries.}

\item{normalthr}{numeric: threshold for normal check in radians.}

\item{silent}{logical, if TRUE no console output is issued.}
}
\value{
a list of decimated meshes with correspondences preserved.
}
\description{
decimate a list of registered meshes (with corresponding vertices), preserving correspondences using Quadric Edge Collapse decimation
}
\details{
The decimation is applied to a reference and then the barycentric coordinates of the new vertices on the original surface are calculated. These are used to extract the corresponding positions of the remeshed versions on all meshes in the sample. The Decimation is performed by the function \code{vcgQEdecim} from the Rvcg-package.
}

