require 'json'
module FirstData
	module ModelUtils

		def set_attributes(params)
			params = clean_params(params)
			
			if self.class.const_defined?("ATTR")
				self.class::ATTR.each do |var_name|
					instance_variable_set("@#{var_name}", params[var_name]) if params[var_name]
				end
			end

			if self.class.const_defined?("OBJ_ATTR")
				self.class::OBJ_ATTR.each do |var_name, class_name|
					instance_variable_set("@#{var_name}", obj_or_hash(params[var_name], class_name)) if params[var_name]
				end
			end
		end

		def clean_params(params)
			cleaned_params = {}
			params.each { |k,v| cleaned_params[k.to_sym] = v }
			cleaned_params
		end

		def obj_or_hash(param, object)
			case param
			when Hash
				object.new(param)
			when object
				param
			else	
				raise ArgumentError.new("#{self.class} requires #{object.to_s} object or hash")
			end
		end

		def to_json
			JSON.generate(self.to_hash)
		end

		def to_hash
			self_hash = {}
			self.instance_variables.each do |var|
				value = self.instance_variable_get(var)
				if value.respond_to?(:to_hash)
					value = value.to_hash 
				elsif value.is_a?(Array)
					value = value.map{|el| el.to_hash}
				else
					value = value.to_s
				end
				self_hash[var.to_s.sub(/^@/, '')] = value
			end
			self_hash
		end
	end
end