module FirstData
	class AuthenticationResult
		include ModelUtils

		ATTR = [
			:applePay,
			:secure3d
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
