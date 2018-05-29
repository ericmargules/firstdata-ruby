module FirstData
	class TransactionResponse
		include ModelUtils

		ATTR = [
			:clientRequestId,
			:apiTraceId,
			:ipgTransactionId,
			:orderId,
			:transactionType,
			:authorizationCode,
			:avsResponse,
			:securityCodeResponse,
			:brand,
			:country,
			:terminalId,
			:clientTransactionId,
			:transactionTime,
			:transactionStatus,
			:authenticationRedirect,
		]
		
		OBJ_ATTR = {
			approvedAmount: Amount,
			error: ResponseError
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
