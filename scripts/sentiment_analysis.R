# Sentiment analysis simulation
set.seed(42)

sentiment_data <- data.frame(
  tweet_id = 1:20,
  sentiment_score = runif(20, min = -1, max = 0.5)
)

sentiment_data <- sentiment_data %>%
  mutate(
    sentiment_category = case_when(
      sentiment_score > 0.2 ~ "Positive",
      sentiment_score < -0.2 ~ "Negative",
      TRUE ~ "Neutral"
    )
  )

# Plot sentiment distribution
ggplot(sentiment_data, aes(x = sentiment_category, fill = sentiment_category)) +
  geom_bar() +
  labs(
    title = "Simulated Sentiment Analysis of Tweets",
    x = "Sentiment Category",
    y = "Count"
  ) +
  scale_fill_manual(values = c("Positive" = "blue", "Neutral" = "gray", "Negative" = "red")) +
  theme_minimal()