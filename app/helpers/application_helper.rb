module ApplicationHelper
  def full_title(page_title)
    if page_title.empty?
      service_name
    else
      "#{page_title} | #{service_name}"
    end
  end

  def service_name
    'mlborder.com'
  end

  def link_to_add_fields(name, f, association, options = {})
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end

    link_to(name, '#', { class: "add_fields", data: { id: id, fields: fields.gsub("\n", "") } }.merge(options))
  end
end
