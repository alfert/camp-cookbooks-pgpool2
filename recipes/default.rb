#
# Cookbook Name:: pgpool2
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# PG Pool requires postgreql 
include_recipe "postgresql::client"

package "pgpool2" do
	action :install
end


template "/etc/pgpool2/pgpool.conf" do
	source "pgpool.conf.erb"
	owner "root"
	group "root"
	mode "0644"
	notifies :restart, "service[pgpool2]"
end

template "/etc/pgpool2/pcp.conf" do
	source "pcp.conf.erb"
	owner "root"
	group "root"
	mode "0644"
	notifies :restart, "service[pgpool2]"
end

template "/etc/pgpool2/pool_hba.conf" do
	source "pool_hba.conf.erb"
	owner "root"
	group "root"
	mode "0644"
	notifies :restart, "service[pgpool2]"
end


service "pgpool2" do
	supports :status => true, :restart => true, :reload => true
	action [ :enable, :start ]
end
