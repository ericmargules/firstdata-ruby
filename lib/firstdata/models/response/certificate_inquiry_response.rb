module FirstData
	class CertificateInquiryResponse
		include ModelUtils

		ATTR = [
			:clientRequestId,
			:apiTraceId,
			:certificates
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
			set_list_items('certificates', Certificate)
		end
	end
end
