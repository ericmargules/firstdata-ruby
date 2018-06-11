module FirstData
	class Permissions
		include ModelUtils

		ATTR = [
			:authType,
			:authId
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
