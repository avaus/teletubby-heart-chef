execute "apt-get_update" do
  command 'apt-get update'
  action :run
end

%w{gcc-4.4 openssl postgres}.each do |pkg|
  package pkg do
    action :install
  end
end

execute "install_rvm" do
  command 'curl -L https://get.rvm.io | bash -s -- --ignore-dotfiles'
  action :run
end

execute "install_ruby-1.9.3" do
  command 'rvm install 1.9.3 --with-gcc=gcc-4.2'
  action :run
end

execute "default_to_ruby-1.9.3" do
  command 'rvm use --default 1.9.3'
  action :run
end
