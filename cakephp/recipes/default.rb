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
directory node[:cakephp][:tmp_dir] do
  owner "deploy"
  group "www-data"
  mode "0775"
  recursive true
  action :create
end

directory node[:cakephp][:upload_tmp_dir] do
  owner "deploy"
  group "www-data"
  mode "0775"
  recursive	true
  action :create
end

directory node[:cakephp][:upload_dir] do
  owner "deploy"
  group "www-data"
  mode "0775"
  recursive true
  action :create
end

directory node[:cakephp][:resources_dir] do
  owner "deploy"
  group "www-data"
  mode "0775"
  recursive true
  action :create
end