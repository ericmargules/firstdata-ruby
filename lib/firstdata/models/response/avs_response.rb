module FirstData
	class AvsResponse
		include ModelUtils

		ATTR = [
			:streetNumberMatch,
			:postalCodeMatch
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end