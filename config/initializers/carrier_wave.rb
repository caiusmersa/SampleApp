if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_KEY']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end

# AKIAJTNTL34RKBMG4HXQ
# As3/Znc3AhzTjqQQKWgspJN67/Rh58lyhZwYte5e

# heroku config:set S3_ACCESS_KEY=AKIAJTNTL34RKBMG4HXQ
# $ heroku config:set S3_SECRET_KEY=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
# $ heroku config:set S3_BUCKET=fotosforsampleapp