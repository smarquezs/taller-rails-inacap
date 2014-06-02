include_recipe "ruby_build"
include_recipe "rbenv::user"
include_recipe "mysql::server"
include_recipe "mysql::client"

package "libqt4-dev"
package "libicu48"
package "vim"
package "xvfb"
package "libsqlite3-dev"
#package "libmysqld-dev"
#package "libmysqlclient-dev"

execute "adding DISPLAY var in order to run specs" do
  command "echo 'DISPLAY=localhost:1.0' >> /home/vagrant/.bashrc"
end
