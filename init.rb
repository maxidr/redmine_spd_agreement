require 'redmine'
require_dependency 'hooks/view_layouts_base_html_head_hook'

Redmine::Plugin.register :redmine_spd_agreement do
  name 'Redmine Spd Agreement plugin'
  author 'Maximiliano Dello Russo'
  description 'Muestra los terminos y condiciones de uso de la plataforma SPD'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'https://coderwall.com/maxidr'
end
