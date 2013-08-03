module PolymorphicSelect
  module FormHelper
    def new_collection_select(object, method, collection, value_method, text_method, options = {}, html_options = {})
#      html_options = {:"data-input" => "testing"}
      merge_html_data_options(html_options, method, collection, value_method, text_method)
      coll = collection_select(object, "#{method}_id", collection, value_method, text_method, options, html_options)
      return coll
#      hidden = hidden_field(object, "#{method}_type", {:value => collection.first.class.name})
#      return coll + hidden
    end
    
    protected
    def merge_html_data_options(html_options, method, collection, value_method, text_method)
      html_options.merge!({:"data-input" => "#{method}_type"})      
      html_options.merge!({:"data-class-map" => build_class_map(collection, value_method, text_method)})      
    end
    
    def build_class_map(collection, value_method, text_method)
      array = Array.new
      collection.each do |object|
        array << "\"#{object.send(value_method)}\" : \"#{object.send(text_method)}\""
      end
      output_string = array.compact.join(', ')
      return '{' + output_string + '}'
    end
  end
end

module PolymorphicSelect::FormBuilder
  def polymorphic_select(method, options = {})
    @template.new_collection_select(@object, method, objectify_options(options))
  end
end
