include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby "1.9.3-p247"

rbenv_gem "bundler" do
  ruby_version "1.9.3-p247"
end

rbenv_gem "rake" do
  ruby_version "1.9.3-p247"
end

package "libqt4-dev"
package "libicu48"
package "vim"
package "xvfb"

execute "adding DISPLAY var in order to run specs" do
  command "echo 'DISPLAY=localhost:1.0' >> /home/vagrant/.bashrc"
end
