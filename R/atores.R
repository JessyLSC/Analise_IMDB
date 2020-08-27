
usethis::use_git()
library(tidyverse)
library(dplyr)

imdb <- readr::read_rds("data/imdb.rds")

calcular_num_filmes <- function(tab, nome_ator) {
  num_filmes <- tab %>%
    pivot_longer(
      cols = starts_with("ator"),
      names_to = "posicao",
      values_to = "ator") %>%
    filter(ator == nome_ator) %>%
  view()
}

calcular_num_filmes(imdb, "Will Smith")
