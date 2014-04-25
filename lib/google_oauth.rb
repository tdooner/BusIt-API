require 'open-uri'

class GoogleOauth
  def initialize(access_token)
    @access_token = access_token
  end

  def get_token_info!
    url = URI('https://www.googleapis.com/oauth2/v1/tokeninfo?access_token=%s' % @access_token)

    JSON.parse(open(url).read)
  end

  def get_user_info!(user_id)
    url = 'https://www.googleapis.com/plus/v1/people/%s?access_token=%s' % user_id, @access_token

    JSON.parse(open(url).read)
  end
end
