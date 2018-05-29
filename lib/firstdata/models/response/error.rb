module FirstData
	class ResponseError
		include ModelUtils

		ATTR = [
			:code,
			:message,
			:details
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
