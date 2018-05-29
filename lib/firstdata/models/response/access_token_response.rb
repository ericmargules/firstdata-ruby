module FirstData
	class AccessTokenResponse
		include ModelUtils

		ATTR = [
			:accessToken,
			:clientRequestId,
			:apiTraceId,
			:transactionStatus
		]

		OBJ_ATTR = {
			error: ResponseError
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end

		def valid_token?
			true
		end
	end
end
