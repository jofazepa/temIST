# temIST

Tema para ggplot2.

## Instalação

```r
install.packages(c("ggplot2", "scales", "showtext", "sysfonts", "remotes"))
remotes::install_github("jofazepa/temIST")
```

## Exeplos de utilização
Utilizando uma escala de cores categorial em gráficos de pontos.
```r
ggplot(mtcars, aes(wt, mpg, colour = factor(cyl))) +
  geom_point(size = 3) +
  scale_colour_ist() +
  labs(
    title    = "Peso vs Consumo",
    subtitle = "Dados do dataset mtcars"
  ) +
  tem_ist()
```
Utilizando uma escala de cores sequencial (tons de azul).
```r
ggplot(faithfuld, aes(waiting, eruptions, fill = density)) +
  geom_raster() +
  scale_fill_ist_seq() +
  labs(
    title    = "Densidade de erupções",
    subtitle = "Old Faithful geyser"
  ) +
  tem_ist()
```
Gráfico de barras.
```r
ggplot(mpg, aes(manufacturer)) +
  geom_bar() +
  coord_flip() +
  labs(
    title    = "Número de modelos por fabricante",
    subtitle = "Dataset mpg (Hadley Wickham)",
    x = NULL,
    y = "Número de modelos"
  ) +
  tem_ist()
```
Utilizando uma escala de cores categorial em gráfico de barras..
```r
ggplot(mpg, aes( manufacturer, fill=class)) +
  geom_bar() +
  coord_flip() +
  scale_fill_ist() +
  labs(
    title    = "Número de modelos por fabricante",
    subtitle = "Dataset mpg (Hadley Wickham)",
    x = NULL,
    y = "Número de modelos"
  ) +
  tem_ist()
```
Gráfico de linhas.
```r
ggplot(economics, aes(date, psavert)) +
  geom_line(linewidth = 1) +
  labs(
    title    = "Taxa de poupança pessoal nos EUA",
    subtitle = "Série temporal 1967–2015",
    x = NULL,
    y = "Poupança pessoal (%)"
  ) +
  tem_ist()
```
