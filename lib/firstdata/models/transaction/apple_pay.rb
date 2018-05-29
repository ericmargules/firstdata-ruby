module FirstData
	class ApplePay
		include ModelUtils

		ATTR = [
			:data,
			:signature,
			:header,
			:version,
			:appId
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
