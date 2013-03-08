module RedmineSpdAgreement
  module Hooks
    class ViewLayoutsBaseHtmlHeadHook < Redmine::Hook::ViewListener

      def view_layouts_base_html_head(context={})
        javascript_include_tag('spd_agreement.js', :plugin => 'redmine_spd_agreement') +
        stylesheet_link_tag('spd_agreement.css', :plugin => 'redmine_spd_agreement') 
      end

    end
  end
end
