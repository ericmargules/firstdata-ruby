module FirstData
	class Signature

		ATTR = [
			:api_key,
			:api_secret,
			:digest,
			:token
		]

		attr_reader :timestamp

		def initialize(params)
			ATTR.each { |attr| instance_variable_set("@#{attr}", params[attr]) if params[attr] }
			@digest = 'sha256' if !@digest
			@timestamp = timestamp.to_s
		end

		def sign(payload)
			data = @api_key + nonce + @timestamp + @token + payload
			puts "Sign timestamp: " + @timestamp
			OpenSSL::HMAC.hexdigest(@digest, @api_secret, data)
		end

		def nonce
			SecureRandom.base64
		end

		def timestamp
			Time.now.utc.to_i
		end
	end
end