# ============================================================================
# Tema institucional temIST
# ============================================================================

#' Caminho para a fonte Source Sans 3 embutida no pacote
#'
#' @return String com o caminho para o ficheiro .ttf, ou "" se não encontrado.
#' @keywords internal
ist_font_path <- function() {
  system.file("fonts", "SourceSans3-Regular.ttf",
              package = "temIST", mustWork = FALSE)
}

#' Tema institucional para ggplot2
#'
#' Aplica a fonte Source Sans 3 (embutida no pacote), título e subtítulo
#' alinhados à esquerda, e um estilo limpo consistente com a identidade
#' visual da instituição.
#'
#' @param base_size Tamanho base da fonte (default 12).
#' @param base_family Família tipográfica (default "Source Sans 3").
#' @param load_font Se TRUE (default), carrega a fonte a partir do ficheiro
#'   embutido no pacote. Se já carregaste a fonte manualmente, usa FALSE.
#' @return Um objeto \code{theme} para usar com \code{+}.
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(wt, mpg)) +
#'   geom_point() +
#'   labs(title = "Peso vs Consumo", subtitle = "Dataset mtcars") +
#'   tem_ist()
tem_ist <- function(base_size = 12, base_family = "Source Sans 3",
                    load_font = TRUE) {
  
  if (load_font) {
    font_file <- ist_font_path()
    
    if (font_file != "" && file.exists(font_file)) {
      tryCatch({
        sysfonts::font_add("Source Sans 3", regular = font_file)
        showtext::showtext_auto()
      }, error = function(e) {
        warning("Não foi possível registar 'Source Sans 3'. ",
                "A usar fonte default.", call. = FALSE)
        base_family <<- "sans"
      })
    } else {
      warning("Ficheiro da fonte 'Source Sans 3' não encontrado no pacote. ",
              "A usar fonte default.", call. = FALSE)
      base_family <<- "sans"
    }
  }
  
  ggplot2::theme_bw(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      
      # ---- Título e subtítulo: alinhados à esquerda ----
      plot.title    = ggplot2::element_text(
        hjust = 0, face = "bold", size = base_size * 1.25,
        colour = IST_GREY, margin = ggplot2::margin(b = 4)
      ),
      plot.subtitle = ggplot2::element_text(
        hjust = 0, size = base_size * 0.92,
        colour = IST_GREY, margin = ggplot2::margin(b = 10)
      ),
      plot.caption  = ggplot2::element_text(
        hjust = 0, size = base_size * 0.80, colour = IST_GREY,
        margin = ggplot2::margin(t = 8)
      ),
      
      # ---- Texto global ----
      text           = ggplot2::element_text(colour = IST_GREY),
      axis.title     = ggplot2::element_text(colour = IST_GREY, size = base_size),
      axis.text      = ggplot2::element_text(colour = IST_GREY, size = base_size * 0.85),
      legend.title   = ggplot2::element_text(face = "bold", colour = IST_GREY),
      legend.text    = ggplot2::element_text(colour = IST_GREY),
      strip.text     = ggplot2::element_text(face = "bold", colour = IST_GREY),
      
      # ---- Grelha e painéis ----
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major = ggplot2::element_line(colour = IST_LIGHT, linewidth = 0.35),
      panel.border     = ggplot2::element_rect(colour = IST_LIGHT, fill = NA, linewidth = 0.5),
      axis.ticks       = ggplot2::element_line(colour = IST_LIGHT, linewidth = 0.35),
      
      # ---- Fundo ----
      plot.background  = ggplot2::element_blank(),
      panel.background = ggplot2::element_blank(),
      
      # ---- Facets ----
      strip.background = ggplot2::element_rect(fill = IST_LIGHT, colour = NA),
      
      # ---- Legenda ----
      legend.background = ggplot2::element_blank(),
      legend.key        = ggplot2::element_blank(),
      
      # ---- Margens ----
      plot.margin = ggplot2::margin(t = 10, r = 10, b = 10, l = 10, unit = "pt")
    )
}