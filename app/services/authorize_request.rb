class AuthorizeRequest 
    def initialize(headers = {})
      @headers = headers
    end
  
    def user
      User.find_by(id: decoded_token['user_id']) if decoded_token
    end
  
    private
  
    attr_reader :headers
  
    def decoded_token
      JWT.decode(auth_token, ENV["SECRET_KEY_BASE"], true, { algorthim: 'HS256' })[0]
    rescue
      nil
    end
  
    def auth_token
      headers['Authorization'].split.last if headers['Authorization'].present?
    end
end