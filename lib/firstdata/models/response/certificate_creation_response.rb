module FirstData
	class CertificateCreationResponse
		include ModelUtils
		
		ATTR = [
			:clientRequestId,
			:apiTraceId,
			:certificate
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
