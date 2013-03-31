Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, "TWITTER_KEY", "TWITTER_SECRET"
  provider :facebook, "FACEBOOK_KEY", "FACEBOOK_SECRET"
  provider :github, "GITHUB_KEY", "GITHUB_SECRET"
end
