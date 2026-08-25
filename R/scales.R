# ============================================================================
# Escalas de cor para ggplot2
# ============================================================================

#' Escala de cor categorial institucional (discreta)
#'
#' @param ... Argumentos passados para \code{\link[ggplot2]{discrete_scale}}.
#' @export
scale_colour_ist <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "ist_categorical",
    palette    = function(n) ist_categorical(),
    ...
  )
}

#' @rdname scale_colour_ist
#' @export
scale_color_ist <- scale_colour_ist

#' @rdname scale_colour_ist
#' @export
scale_fill_ist <- function(...) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "ist_categorical",
    palette    = function(n) ist_categorical(),
    ...
  )
}

#' Escala de cor sequencial institucional (contínua)
#'
#' @param ... Argumentos passados para \code{\link[ggplot2]{continuous_scale}}.
#' @export
scale_colour_ist_seq <- function(...) {
  ggplot2::continuous_scale(
    aesthetics = "colour",
    scale_name = "ist_sequential",
    palette    = scales::gradient_n_pal(colours = ist_sequential()),
    ...
  )
}

#' @rdname scale_colour_ist_seq
#' @export
scale_color_ist_seq <- scale_colour_ist_seq

#' @rdname scale_colour_ist_seq
#' @export
scale_fill_ist_seq <- function(...) {
  ggplot2::continuous_scale(
    aesthetics = "fill",
    scale_name = "ist_sequential",
    palette    = scales::gradient_n_pal(colours = ist_sequential()),
    ...
  )
}