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
			request_headers = {
				"Content-Type" => @config.content_type,
				"App-Id" => @config.app_id,
				"Access-Token" => @config.access_token
			}

			_http_request(verb, request_headers, path, body)

		end

		def token_request(path)
			signature = @config.signature
			request_headers = {
				"Content-Type" => @config.content_type,
				"Api-Key" => @config.api_key,
				"Client-Request-Id" => SecureRandom.uuid,
				"Timestamp" => signature.timestamp,
				"Message-Signature" => signature.sign("")
			}

			_http_request(Net::HTTP::Post, request_headers, path)
		end

		def _http_request(verb, headers, path, body="")
			uri = URI(@config.base_url)

			Net::HTTP::start(uri.host, uri.port) do |http|
				request = verb.new(path)
				headers.each{|k,v| request[k] = v }
				request.body = body.is_a?(String) ? body : body.to_json
				http.request(request)
			end
		end
	end
end