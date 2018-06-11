module FirstData
	class PrimaryTransaction
		include ModelUtils

		ATTR = [
			:transactionType,
			:storeId,
			:clientTransactionId,
			:basketItems
		]

		OBJ_ATTR = {
			amount: Amount,
			paymentMethod: PaymentMethod,
			order: Order,
			additionalDetails: AdditionalDetails,
			splitShipment: SplitShipment,
			industrySpecificExtensions: IndustrySpecificExtensions
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
			set_list_items('basket_items', BasketItem)
		end
	end
end
