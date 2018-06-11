module FirstData
	class ApplePayHeader
		include ModelUtils

		ATTR = [
			:applicationDataHash,
			:ephemeralPublicKey,
			:publicKeyHash,
			:transactionId
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
