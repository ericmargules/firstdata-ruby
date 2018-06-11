module FirstData
	class Lodging
		include ModelUtils

		ATTR = [
			:arrivalDate,
			:departureDate,
			:folioNumber,
			:extraCharges,
			:noShowIndicator
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
			set_list_items('extraCharges', ExtraCharge)
		end
	end
end
