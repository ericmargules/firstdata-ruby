module FirstData
	class AuthResultApplePay
		include ModelUtils

		ATTR = [
			:onlinePaymentCryptogram,
			:eciIndicator
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
