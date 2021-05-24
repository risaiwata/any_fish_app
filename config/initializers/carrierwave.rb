unless Rails.env.development? || Rails.env.test?

  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region: 'us-east-2',
    path_style: true
  }

  config.fog_directory  = 'anyfish0313'
    config.cache_storage = :fog
end

