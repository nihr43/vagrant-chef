#
# Cookbook Name:: epel
# Recipe:: default
#
# Copyright 2018, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute


execute 'wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -O /tmp/epel-release-latest-7.noarch.rpm && rpm -ihv /tmp/epel-release-latest-7.noarch.rpm' do
  not_if "rpm -qa | grep -q epel"
end

