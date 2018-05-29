module FirstData
	class DecryptedData
		include ModelUtils

		OBJ_ATTR = {
			transactionAmount: Amount,
			paymentCard: PaymentCard
		}
		
		attr_reader *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
