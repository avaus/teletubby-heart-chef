execute "apt-get_update" do
  command 'apt-get update'
  action :run
end

%w{gcc-4.4 openssl postgresql-8.4 postgresql-server-dev-8.4}.each do |pkg|
  package pkg do
    action :install
  end
end
