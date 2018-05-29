module FirstData
	class AmountComponents
		include ModelUtils

		ATTR = [
			:subtotal,
			:vatAmount,
			:localTax,
			:shipping,
			:cashback,
			:tip,
			:convenienceFee
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
