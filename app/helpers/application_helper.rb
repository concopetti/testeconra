module ApplicationHelper
	def link_to_add_fields(name, f, association, link_options={})
		new_object = f.object.send(association).klass.new
		id = new_object.object_id

		fields = f.fields_for(association, new_object, child_index: id) do |builder|
			render("#{new_object.to_partial_path}_fields", f: builder)
		end

		data_options = {id: id, fields: fields.gsub("\n", "")}

		if link_options[:data]
			link_options[:data].merge! data_options
		else
			link_options[:data] = data_options
		end
  
		if link_options[:class]
			link_options[:class] += ' add_fields'
		else
			link_options[:class] = ' add_fields'
		end

		link_to(name, '#', link_options)
	end
end
