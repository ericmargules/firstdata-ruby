module FirstData
	class PaymentMethod
		include ModelUtils

		ATTR = [
			:type
		]

		OBJ_ATTR = {
			paymentCard: PaymentCard, 
			sepaDirectDebit: SepaDirectDebit, 
			applePay: ApplePay
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			detect_payment_method(params)
			set_attributes(params)
		end

		def detect_payment_method(params)
			case params[:type].to_s
			when "paymentCard"
				params[:paymentCard] = PaymentCard.new(params) if params[:number]
			when "sepaDirectDebit"
				params[:sepaDirectDebit] = SepaDirectDebit.new(params) if params[:iban]
			when "applePay"
				params[:applePay] = ApplePay.new(params) if params[:data]
			end
		end
	end
end
