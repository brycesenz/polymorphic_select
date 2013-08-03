require "polymorphic_select/version"
require "app/helpers/form_helper.rb"

module PolymorphicSelect
  initializer "PolymorphicSelect" do
    ActionController::Base.helper(PolymorphicSelect::PolymorphicSelectHelper)
    ActionView::Helpers::FormHelper.send(:include, PolymorphicSelect::FormHelper)
    ActionView::Base.send(:include, PolymorphicSelect::PolymorphicSelectHelper)
    ActionView::Helpers::FormBuilder.send(:include,PolymorphicSelect::FormBuilder)
  end
end
