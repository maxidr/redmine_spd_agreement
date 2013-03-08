module RedmineSpdAgreement
  module Hooks
    class ViewLayoutsBaseHtmlHeadHook < Redmine::Hook::ViewListener

      def view_layouts_base_html_head(context={})
        
        js_agreements_page = "var agreements_page = '#{agreements_page}';"
        js_reject_page = "var agreements_reject_page = '#{agreements_reject_page}';"
        
        return javascript_include_tag('spd_agreement.js', :plugin => 'redmine_spd_agreement') +
        stylesheet_link_tag('spd_agreement.css', :plugin => 'redmine_spd_agreement') +
        javascript_tag(js_agreements_page) + javascript_tag(js_reject_page)
      end


      def agreements_page
        Setting.plugin_redmine_spd_agreement['agreements_page'] || ""
      end

      def agreements_reject_page
        Setting.plugin_redmine_spd_agreement['agreements_reject_page'] || ""
      end

    end
  end
end
