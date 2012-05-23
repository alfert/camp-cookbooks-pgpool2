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


