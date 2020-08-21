usethis::use_git()
imdb <- readr::read_rds("data/imdb.rds")


library(tidyverse)
library(dplyr)

pegar_maiores_receitas <- function(tab, n) {
  tab_n_maiores_receitas <- tab %>%
    select(titulo, diretor, receita) %>%
    arrange(desc(receita)) %>%
    top_n(n)
  tab_n_maiores_receitas
}

pegar_maiores_receitas(imdb,1)
