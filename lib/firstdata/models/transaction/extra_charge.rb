module FirstData
	class ExtraCharge
		include ModelUtils

		ATTR = [
			:chargeItem
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
