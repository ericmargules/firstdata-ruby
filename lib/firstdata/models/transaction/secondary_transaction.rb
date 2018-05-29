module FirstData
	class SecondaryTransaction
		include ModelUtils

		ATTR = [
			:storeId
		]

		OBJ_ATTR = {
			amount: Amount,
			splitShipment: SplitShipment
		}

		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
