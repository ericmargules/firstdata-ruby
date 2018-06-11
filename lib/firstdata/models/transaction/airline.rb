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
			set_list_items('travelRoute', TravelRoute)
			set_list_items('ancillaryServiceCategory', AncillaryServiceCategory)
		end
	end
end
