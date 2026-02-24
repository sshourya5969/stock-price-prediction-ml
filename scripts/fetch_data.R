# Fetch Twitter data
user_name <- "USERNAME"
num_tweets <- 20

user_tweets <- get_timeline(user = user_name, n = num_tweets, token = twitter_token)

if (nrow(user_tweets) == 0) {
  stop("No tweets found.")
} else {
  print("Tweets retrieved successfully!")
}