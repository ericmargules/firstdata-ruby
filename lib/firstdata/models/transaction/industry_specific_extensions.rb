module FirstData
	class IndustrySpecificExtensions
		include ModelUtils

		OBJ_ATTR = {
			:airline => Airline,
			:lodging => Lodging,
			:carRental => CarRental
		}

		attr_reader *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
