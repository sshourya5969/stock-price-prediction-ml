# Load required libraries
library(rtweet)
library(ggplot2)
library(dplyr)

# Twitter API credentials (replace with your own keys)
app_name <- "YOUR_APP_NAME"
consumer_key <- "YOUR_CONSUMER_KEY"
consumer_secret <- "YOUR_CONSUMER_SECRET"
access_token <- "YOUR_ACCESS_TOKEN"
access_secret <- "YOUR_ACCESS_SECRET"

# Create token
twitter_token <- create_token(
  app = app_name,
  consumer_key = consumer_key,
  consumer_secret = consumer_secret,
  access_token = access_token,
  access_secret = access_secret
)

# Check token
if (is.null(twitter_token)) {
  stop("Failed to create Twitter token. Check credentials.")
} else {
  print("Twitter token created successfully!")
}