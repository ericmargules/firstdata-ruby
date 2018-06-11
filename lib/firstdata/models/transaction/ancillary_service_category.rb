module FirstData
	class AncillaryServiceCategory
		include ModelUtils

		ATTR = [
			:serviceCategory
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
