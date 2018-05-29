module FirstData
	class Billing
		include ModelUtils

		ATTR = [
			:name,
			:personalNumber,
			:birthdate,
			:gender,
		]

		OBJ_ATTR = {
			contact: Contact,
			address: Address
		}

		attr_reader *ATTR, *OBJ_ATTR.keys
		
		def initialize(params)
			set_attributes(params)
		end
	end
end
