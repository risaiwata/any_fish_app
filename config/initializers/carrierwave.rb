unless Rails.env.development? || Rails.env.test?
  require 'carrierwave/storage/abstract'
  require 'carrierwave/storage/file'
  require 'carrierwave/storage/fog'
  
  CarrierWave.configure do |config|
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory  = 'anyfish0313'
    #config.asset_host = 'https://s3.amazonaws.com/バケット名'
    config.fog_public = false
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AWS_ACCESS_KEY_ID',
      aws_secret_access_key: 'AWS_SECRET_ACCESS_KEY',
      region: 'ap-northeast-1' # ←自身のregionを入力
    }
  end
end

