module FirstData
	class WalletDecryptionResponse
		include ModelUtils

		OBJ_ATTR = {
			decryptedData: DecryptedData
		}
		
		attr_reader *OBJ_ATTR.keys
		def initialize(params)
			set_attributes(params)
		end
	end
end
