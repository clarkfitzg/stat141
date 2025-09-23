edibnb %>%
  filter(50 <= review_scores_rating) %>%
  ggplot(aes(x = review_scores_rating)) +
  geom_histogram(binwidth = 10)



filter(edibnb, neighbourhood %in% top3$neighbourhood) %>%
  ggplot(mapping = aes(x = price, color = neighbourhood)) +
  geom_density(linewidth = 1)


filter(edibnb, neighbourhood %in% top3$neighbourhood) %>%
ggplot(aes(x =review_scores_rating , 
                   fill = neighbourhood)) +
  geom_histogram(binwidth = 10,
                 alpha = 3) +
  labs(
    x = "review_scores_rating",
    y = "percent",
    title = "the distribution of review scores across neighbourhoods"
  )

starwars %>%
  filter(mass < 50) %>%
  arrange(height)

slice_head(filter(starwars, hair_color == "brown"), n = 10)

starwars %>%
  filter(hair_color == "brown") %>%
  slice_head(n = 10)

slice_head(filter(starwars, hair_color == "brown"), n = 10)

starwars %>%
  filter(homeworld == "Naboo") %>%
  slice_head(n = 10)

starwars %>%
  select(name, birth_year) %>%
  arrange(birth_year)
