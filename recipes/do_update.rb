#
# Author:: Earth U (<iskitingbords@gmail.com>)
# Cookbook Name:: cookbook-updater
# Recipe:: do_update
#
# Copyright 2016, Earth U
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

case node['platform_family']
when 'debian'
  include_recipe 'apt'
  execute 'apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y '\
          '-o Dpkg::Options::="--force-confnew" --force-yes dist-upgrade'

when 'rhel'
  execute 'yum -y update'

else
  log "No action specified for #{node['platform_family']}" do
    level :warn
  end
end
