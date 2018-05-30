module FirstData
	class Config
		BASE_URL = "firstapi-dev.pjknhgyuhb.us-east-1.elasticbeanstalk.com"

		ATTR = [
			:api_key,
			:api_secret,
			:app_id,
			:environment,
			:default_currency
		]
	
		attr_accessor *ATTR

		def initialize(params={})
			ATTR.each { |attr| instance_variable_set "@#{attr}", params[attr] }
		end

		def http
			HTTP.new(self)
		end

		def base_url
			http_protocol + BASE_URL
		end

		def http_protocol
			ssl? ? "https://" : "http://"
		end
		
		def ssl?
			case @environment
			when "development"
				false
			when "production"
				true
			end
		end

		def content_type
			"application/json"
		end

		def user_agent
			"First Data Ruby Gem #{FirstData::ReleaseVersion::Number}"
		end

		def signature
			Signature.new(
				api_key: @api_key,
				api_secret: @api_secret,
				token: "something"
			)
		end

		def access_token
			@access_token = @access_token != nil && @access_token.valid_token? ? @access_token : get_access_token
			@access_token.accessToken
		end

		def get_access_token
			token_portal = AccessTokenPortal.new(self)
			token_portal.get_token
		end
	end
end