library(tidyverse)
library(here)
webpage <- read_html("https://www.eatthis.com/iconic-desserts-united-states/")

dessert_elements<- html_elements(webpage, "h2")

dessert_listing <- dessert_elements %>% html_text2() %>%
  as_tibble() %>% rename(dessert = value) %>%  head(.,-3) %>%
  rowid_to_column("rank") %>%
  write_csv("data/iconic_desserts.csv")

print(str_detect(iconic_desserts$dessert, "brownies"))

kljjkl

