module FirstData
	class AdditionalDetails
		include ModelUtils

		ATTR = [
			:referenceNumber,
			:comments,
			:dynamicMerchantName,
			:invoiceNumber,
			:purchaseOrderNumber,
			:recurringType
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
