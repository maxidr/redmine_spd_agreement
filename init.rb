require 'redmine'
require_dependency 'hooks/view_layouts_base_html_head_hook'

Redmine::Plugin.register :redmine_spd_agreement do
  name 'Condiciones de uso de la plataforma SPD'
  author 'Maximiliano Dello Russo'
  description 'Muestra los terminos y condiciones de uso de la plataforma SPD'
  version '0.0.1'
  url 'https://github.com/maxidr/redmine_spd_agreement'
  author_url 'https://coderwall.com/maxidr'


  settings :default => { 
      'agreements_page' => "http://cluster.softwarepublico.gob.ar/condiciones.html",      
      'agreements_reject_page' => "https://www.agendadigital.gob.ar/software-publico"}, 
    :partial => 'settings/agreements_settings'

end
