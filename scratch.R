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

arrange(filter(starwars, hair_color == "brown"), birth_year)

