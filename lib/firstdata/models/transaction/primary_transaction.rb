module FirstData
	class PrimaryTransaction
		include ModelUtils

		ATTR = [
			:transactionType,
			:storeId,
			:clientTransactionId,
			:basketItems,
			:additionalDetails
		]

		OBJ_ATTR = {
			amount: Amount,
			paymentMethod: PaymentMethod,
			order: Order,
			splitShipment: SplitShipment,
			industrySpecificExtensions: IndustrySpecificExtensions
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
