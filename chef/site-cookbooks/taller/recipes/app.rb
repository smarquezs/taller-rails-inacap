include_recipe 'ruby_build'
include_recipe 'rbenv::user'
include_recipe 'mysql::client'
include_recipe 'imagemagick'

include_recipe 'nginx::source'
include_recipe 'nginx::http_stub_status_module'
include_recipe 'nginx::http_ssl_module'
include_recipe 'nginx::http_gzip_static_module'
include_recipe 'nginx::passenger'

template "#{node['nginx']['dir']}/sites-available/default" do
  source 'nginx/default-site.erb'
  owner  'root'
  group  'root'
  mode   0644
  notifies :reload, 'service[nginx]'
end
