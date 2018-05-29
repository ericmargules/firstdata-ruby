module FirstData
	class Order
		include ModelUtils

		ATTR = [
			:orderId
		]

		OBJ_ATTR = {
			billing: Billing,
			shipping: Shipping
		}

		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
