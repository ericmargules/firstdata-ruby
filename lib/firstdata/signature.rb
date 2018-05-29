module FirstData
	class Signature

		ATTRIBUTES = [
			:api_key,
			:api_secret,
			:digest,
			:token
		]

		def initialize(params)
			ATTRIBUTES.each { |attr| instance_variable_set("@#{attr}", params[attr]) if params[attr] }
			@digest = 'sha256' if !@digest
		end

		def sign(payload)
			data = @api_key + nonce + timestamp.to_s + @token + payload
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