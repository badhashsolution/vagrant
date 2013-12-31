include_recipe 'postgresql::server'

# Rewrite this resource to use our template instead
template "#{node[:postgresql][:dir]}/pg_hba.conf" do
  cookbook 'gswd'
end

# Create database user
puts "password?"
puts node['postgresql']['password']['postgres']
postgresql_database_user 'vagrant' do
  action :create
  connection({:host => "127.0.0.1", :port => 5432, :username => 'postgres', :password => node['postgresql']['password']['postgres']})
  password 'vagrant'
end
