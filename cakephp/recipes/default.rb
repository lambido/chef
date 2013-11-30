#
# Cookbook Name:: cakephp
# Recipe:: default
#
# Copyright 2013, Example Com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

template "/srv/www/strainsource/current/src/app/config/database.php" do
  source "/default/database.php.erb"
  mode "0644"
  group "www-data" 
  owner "www-data"
end

template "/srv/www/strainsource/current/src/app/config/s3.php" do
  source "/default/s3.php.erb"
  mode "0644"
  group "www-data" 
  owner "www-data"
end

directory node[:cakephp][:tmp_dir] do
  mode "0777"
  recursive true
  action :create
end

directory node[:cakephp][:log_dir] do
  mode "0777"
  recursive true
  action :create
end

directory node[:cakephp][:upload_tmp_dir] do
  mode "0777"
  recursive	true
  action :create
end

directory node[:cakephp][:upload_dir] do
  mode "0777"
  recursive true
  action :create
end

directory node[:cakephp][:resources_dir] do
  mode "0777"
  recursive true
  action :create
end
