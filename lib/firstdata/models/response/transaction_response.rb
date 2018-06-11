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
			:securityCodeResponse,
			:brand,
			:country,
			:terminalId,
			:clientTransactionId,
			:transactionTime,
			:transactionStatus,
		]
		
		OBJ_ATTR = {
			avsResponse: AvsResponse,
			approvedAmount: Amount,
			authenticationRedirect: AuthenticationRedirect,
			error: ResponseError
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
