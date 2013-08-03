module PolymorphicSelect
  module FormHelper
    def new_collection_select(object, method, collection, value_method, text_method, options = {}, html_options = {})
#      html_options = {:"data-input" => "testing"}
      merge_html_data_options(html_options, method, collection, value_method, text_method)
      collection_select(object, "#{method}_id", collection, value_method, text_method, options, html_options)
    end
    
    protected
    def merge_html_data_options(html_options, method, collection, value_method, text_method)
      html_options.merge!({:"data-input" => "#{method}_type"})      
    end
    
    def build_class_map
      
    end
  end
end

module PolymorphicSelect::FormBuilder
  def polymorphic_select(method, options = {})
    @template.new_collection_select(@object, method, objectify_options(options))
  end
end
