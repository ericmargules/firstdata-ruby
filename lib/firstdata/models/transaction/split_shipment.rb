module FirstData
	class SplitShipment
		include ModelUtils

		ATTR = [
			:totalCount,
			:finalShipment
		]

		attr_reader *ATTR
		
		def initialize(params)
			set_attributes(params)
		end
	end
end
