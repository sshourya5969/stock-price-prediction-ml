# Data Processing
tweet_data <- user_tweets %>%
  select(created_at, text, retweet_count, favorite_count) %>%
  mutate(tweet_length = nchar(text))

cat("\nBasic Twitter Data Statistics:\n")
cat("Total tweets:", nrow(tweet_data), "\n")
cat("Avg tweet length:", mean(tweet_data$tweet_length), "\n")
cat("Avg retweets:", mean(tweet_data$retweet_count), "\n")
cat("Avg favorites:", mean(tweet_data$favorite_count), "\n")