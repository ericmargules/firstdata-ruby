module FirstData
	class PaymentCard
		include ModelUtils

		ATTR = [
			:number,
			:securityCode,
			:cardFunction,
			:cardholderName,
			:brand,
			:wallet_provider_id,
			:enableTokenization
		]

		OBJ_ATTR = {
			expiryDate: Expiration,
			authenticationRequest: AuthenticationRequest,
			authenticationResult: AuthenticationResult
		}

		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			format_expiration(params) if params[:expiryDate]
			set_attributes(params)
		end

		def format_expiration(params)
			params[:expiryDate] = Expiration.new(expiryDate: params[:expiryDate]) if params[:expiryDate].is_a?(String) or params[:expiryDate].is_a?(Fixnum)
		end
	end
end

