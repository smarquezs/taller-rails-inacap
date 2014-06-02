include_recipe "ruby_build"
include_recipe "rbenv::user"

package "ruby1.9.1-dev"

rbenv_gem 'rake' do
  user node['user']['name']
  rbenv_version '1.9.3-p327'
  version '0.9.2.2'
  action :remove
end

rbenv_gem 'rake' do
  user node['user']['name']
  rbenv_version '1.9.3-p327'
  version '10.1.1'
  action :install
end

include_recipe "nginx::source"
include_recipe "nginx::passenger"
include_recipe "nginx::http_stub_status_module"
include_recipe "nginx::http_geoip_module"
include_recipe "nginx::http_realip_module"

# nginx virtual host configuration

template "#{node['nginx']['dir']}/sites-available/default" do
  source 'nginx/default-site.erb'
  owner  'root'
  group  'root'
  mode   0644
  notifies :reload, 'service[nginx]'
end

# varnish VCL configuration

template "#{node['varnish']['dir']}/default.vcl" do
  source 'varnish/default.vcl.erb'
  owner  'root'
  group  'root'
  mode 0644
  #variables(
  #  :params => node['varnish']
  #)
  notifies :reload, 'service[varnish]'
end

# logrotate for rails app

template "/etc/logrotate.d/rails_app" do
  source 'logrotate/rails_app.erb'
  owner  'root'
  group  'root'
  mode 0644
end
