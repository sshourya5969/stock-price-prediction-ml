# Plot actual tweet data
ggplot(tweet_data, aes(x = retweet_count, y = favorite_count, size = tweet_length)) +
  geom_point(alpha = 0.6, color = "blue") +
  labs(
    title = paste("Twitter Activity for User:", user_name),
    x = "Retweet Count",
    y = "Favorite Count",
    size = "Tweet Length"
  ) +
  theme_minimal()

# Simulated test dataset
set.seed(123)
test_data <- data.frame(
  tweet_id = 1:20,
  retweet_count = sample(0:50, 20, replace = TRUE),
  favorite_count = sample(0:100, 20, replace = TRUE),
  tweet_length = sample(20:280, 20, replace = TRUE)
)

ggplot(test_data, aes(x = retweet_count, y = favorite_count, size = tweet_length)) +
  geom_point(alpha = 0.6, color = "darkgreen") +
  labs(
    title = "Simulated Twitter Activity",
    x = "Retweet Count",
    y = "Favorite Count",
    size = "Tweet Length"
  ) +
  theme_minimal()