module FirstData
	class PaymentMethod
		include ModelUtils

		ATTR = [
			:type
		]

		OBJ_ATTR = {
			payment_card: PaymentCard, 
			sepa_direct_debit: SepaDirectDebit, 
			apple_pay: ApplePay
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			detect_payment_method(params)
			set_attributes(params)
		end

		def detect_payment_method(params)
			case params[:type].to_s
			when "PAYMENT_CARD"
				params[:payment_card] = PaymentCard.new(params) if params[:number]
			when "SEPA_DIRECT_DEBIT"
				params[:sepa_direct_debit] = SepaDirectDebit.new(params) if params[:iban]
			when "applePay"
				params[:apple_pay] = ApplePay.new(params) if params[:data]
			end
		end
	end
end
