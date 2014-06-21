#
# Cookbook Name:: taller
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'mysql::server'
include_recipe 'sqlite'

package "libqt4-dev"
package "libicu48"
package "vim"
package "xvfb"
package "xvfb"

execute "adding DISPLAY var in order to run specs" do
  command "echo 'DISPLAY=localhost:1.0' >> /home/vagrant/.bashrc"
end
