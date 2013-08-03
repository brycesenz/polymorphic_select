require 'app/helpers/form_helper'

module PolymorphicSelect
  module PolymorphicSelectHelper
    include PolymorphicSelect::FormHelper

    # Helper method that creates a polymorphic_select input field
    def polymorphic_select_input(object, method, collection, value_method, text_method, options = {}, html_options = {})
      new_collection_select(object, method, collection, value_method, text_method, options, html_options)
    end

#    def polymorphic_select_input(object_name, method, options = {})
#      demo_input(object_name, method, options)
#    end
  end
end