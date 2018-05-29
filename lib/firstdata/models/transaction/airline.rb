module FirstData
	class Airline
		include ModelUtils

		ATTR = [
			:passengerName,
			:ticketNumber,
			:issuingCarrier,
			:carrierName,
			:travelAgencyIataCode,
			:travelAgencyName,
			:airlinePlanNumber,
			:airlineInvoiceNumber,
			:reservationSystem,
			:restricted,
			:travelRoute,
			:relatedTicketNumber,
			:ancillaryServiceCategory,
			:ticketPurchase
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
