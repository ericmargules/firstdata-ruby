module FirstData
	class TravelRoute
		include ModelUtils

		ATTR = [
			:departureDate,
			:origin,
			:destination,
			:carrierCode,
			:serviceClass,
			:stopoverType,
			:fareBasisCode,
			:departureTax,
			:flightNumber
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
