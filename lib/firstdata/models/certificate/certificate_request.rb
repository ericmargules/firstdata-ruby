module FirstData
	class CertificateRequest
		include ModelUtils

		ATTR = [
			:appLabel,
			:walletProvider,
			:permissions
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
