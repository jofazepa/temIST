# ============================================================================
# Paletas de cores institucionais
# ============================================================================

#' Cores institucionais principais
#'
#'
#' @return Vector nomeado de 3 hexadecimais.
#' @export
#'
#' @examples
#' ist_colours()
#' ist_colours()[["blue"]]
ist_colours <- function() {
  c(
    blue  = "#009DE0",
    grey  = "#46555F",
    light = "#D2D3D4"
  )
}


# Cores principais do manual de identidade
IST_BLUE  <- "#009DE0"
IST_GREY  <- "#46555F"
IST_LIGHT <- "#D2D3D4"

#' Paleta categorial (12 cores)
#'
#'
#' @return Vector de 12 caracteres hexadecimais.
#' @export
#'
#' @examples
#' ist_categorical()
ist_categorical <- function() {
  c(
    "#009DE0",
    "#46555F",
    "#D2D3D4",
    "#F28E2B",
    "#3AA94C",
    "#CC79A7",
    "#8C7DB8",
    "#6BC5D9",
    "#2E6E8E",
    "#E8B84B",
    "#7A9E9F",
    "#B85C38"
  )
}

#' Escala sequencial (12 tons do azul principal)
#'
#'
#' @return Vector de 12 caracteres hexadecimais (claro -> escuro).
#' @export
#'
#' @examples
#' ist_sequential()
ist_sequential <- function() {
  scales::gradient_n_pal(
    colours = c("#EFF7FC", IST_BLUE, "#003B5C")
  )(seq(0, 1, length.out = 12))
}