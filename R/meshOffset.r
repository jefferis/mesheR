#' inflate a mesh along its normals
#' 
#' translate vertices of a triangular mesh along its normals
#' 
#' 
#' @param mesh triangular mesh of class "mesh3d"
#' @param offset distance to translate the vertices
#' @return returns modified mesh.
#' @author Stefan Schlager
#' @keywords ~kwd1 ~kwd2
#' @examples
#' require(rgl)
#' require(Morpho)
#' data(nose)
#' offset <- meshOffset(shortnose.mesh,3)
#' shade3d(shortnose.mesh,col=3)
#' wire3d(offset)
#' @export meshOffset 
meshOffset <- function(mesh,offset)
{
  if (is.null(mesh$normals))
    mesh <- vcgUpdateNormals(mesh)

  mesh$vb[1:3,] <- mesh$vb[1:3,]+offset*mesh$normals[1:3,]
  invisible(mesh)
}
