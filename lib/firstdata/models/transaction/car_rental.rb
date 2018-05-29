module FirstData
	class CarRental
		include ModelUtils

		ATTR = [
			:agreementNumber,
			:renterName,
			:returnCity,
			:returnDate,
			:pickupDate,
			:rentalClassId,
			:extraCharges,
			:noShowIndicator
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
