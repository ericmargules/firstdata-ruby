module FirstData
	class AccessTokenPortal

		def initialize(config)
			@config = config
		end

		def get_token
			path = "/security/access-tokens"
			response = @config.http.get_token(path)
		end
		
		def parse_response(response)
			raise ArgumentError.new(response.message) unless response.code == "200"
			AccessTokenResponse.new(JSON.parse(response.body))
		end
	end
end