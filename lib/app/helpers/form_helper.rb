module PolymorphicSelect
  module FormHelper
    def demo_input(object_name, method, options = {})
      input = text_field(object_name, method, options)
      label = label(object_name, method, options)
      content_tag(:div, (label+input), { :class => 'demo_input' })
    end

    def new_collection_select(object, method, collection, value_method, text_method, options = {}, html_options = {})
      collection_select(object, method, collection, value_method, text_method, options = {}, html_options = {})
    end
  end
end

module PolymorphicSelect::FormBuilder
  def polymorphic_select(method, options = {})
    @template.demo_input(@object_name, method, objectify_options(options))
  end
end
