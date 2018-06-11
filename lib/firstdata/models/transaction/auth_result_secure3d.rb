module FirstData
	class AuthResultSecure3d
		include ModelUtils

		ATTR = [
			:type,
			:verificationResponse,
			:payerAuthenticationResponse,
			:authenticationValue,
			:xid
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
