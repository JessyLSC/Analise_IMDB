library(tidyverse)
library(dplyr)



calcular_num_filmes <- function(tab, nome_ator) {

  num_filmes <- tab %>%
    pivot_longer(cols = ator_1, ator_2, ator_3, names_to = "ator") %>%
    count(nome_ator)

    num_filmes
}
