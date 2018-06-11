module FirstData
	class Certificate
		include ModelUtils

		ATTR = [
			:certificate,
			:appLabel,
			:walletProvider,
			:status
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end