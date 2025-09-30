library(tidyverse)

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

college_recent_grads <- read_rds("https://github.com/clarkfitzg/stat141/raw/refs/heads/main/data/college_recent_grads.rds")

# Linear model
n = 50
x = runif(n)
y = 10 + 8*x + rnorm(n)
plot(x, y)
y2 = sin(3*x) + rnorm(n, sd = 0.2)
plot(x, y2)
xsin = sin(3*x)

mod1 = lm(y ~ x)
plot(mod1)

mod2 = lm(y2 ~ x)
plot(mod2)

mod2 = lm(y2 ~ x + xsin)
plot(mod2)
points(x, predict(mod2), col="blue")

mpg %>%
  filter(cyl == 4) %>%
  arrange(displ)

arrange(filter(mpg, cyl == 4), displ)

# f(x1, x2, x3)
# f is the function
# x1, x2, x3 are the arguments


