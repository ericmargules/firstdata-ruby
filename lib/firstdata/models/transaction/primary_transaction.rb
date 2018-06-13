module FirstData
	class PrimaryTransaction
		include ModelUtils

		ATTR = [
			:transaction_type,
			:store_id,
			:client_transaction_id,
			:basket_items
		]

		OBJ_ATTR = {
			amount: Amount,
			payment_method: PaymentMethod,
			order: Order,
			additional_details: AdditionalDetails,
			split_shipment: SplitShipment,
			industry_specific_extensions: IndustrySpecificExtensions
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
			set_list_items('basket_items', BasketItem)
		end
	end
end
