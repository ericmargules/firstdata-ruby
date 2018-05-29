module FirstData
	class CardVerificationsTransaction
		include ModelUtils

		ATTR = [
			:storeId
		]

		OBJ_ATTR = {
			paymentMethod: PaymentMethod
		}

		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
