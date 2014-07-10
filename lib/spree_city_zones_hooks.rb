Deface::Override.new(:virtual_path  => "store/admin/configurations/index",
                     :name          => "city_zones",
                     :insert_bottom => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                     :text          => "<%= configurations_menu_item('City Zones', admin_cities_path, 'Manage Cities' %>")


# class SpreeCityZonesHooks < Spree::ThemeSupport::HookListener
#   # custom hooks go here
#   insert_after :admin_configurations_menu, 'shared/cities_admin_configurations_menu'
# end