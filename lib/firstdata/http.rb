module FirstData
	class HTTP

		def initialize(config)
			@config = config
		end

		def get(path)
			response = http_request(Net::HTTP::Get, path)
		end

		def post(path, body=nil)
			response = http_request(Net::HTTP::Post, path, body)
		end

		def http_request(verb, path, body="")
			signature = @config.signature

			request_headers = {
				"Content-Type" => @config.content_type,
				"Client-Request-Id" => signature.nonce,
				"Api-Key" => @config.api_key,
				"Timestamp" => signature.timestamp,
				"Message-Signature" => signature.sign(body),
				# "User-Agent" => @config.config.user_agent
				# "App-Id" => @config.app_id,
				# "Access-Token" => @config.access_token
			}

			_http_request(verb, request_headers, path, body)

		end

		def token_request(path)
			signature = @config.signature
			request_headers = {
				"Content-Type" => @config.content_type,
				"Api-Key" => @config.api_key,
				"Client-Request-Id" => signature.nonce,
				"Timestamp" => signature.timestamp,
				"Message-Signature" => signature.sign("")
			}
			_http_request(Net::HTTP::Post, request_headers, path)
		end

		def _http_request(verb, headers, path, body="")
			uri = URI(@config.base_url)

			http = Net::HTTP.new(uri.host, uri.port)
			http.use_ssl = true
			http.verify_mode = OpenSSL::SSL::VERIFY_NONE
			request = verb.new(uri.request_uri + path, headers)
			request.body = body.to_json if !body.empty?
			response = http.request(request)
		end
	end
end