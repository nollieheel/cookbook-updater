#
# Author:: Earth U (<iskitingbords@gmail.com>)
# Cookbook Name:: cookbook-updater
# Recipe:: onetime
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

include_recipe "#{cookbook_name}::do_update"

if node['cookbook-updater']['onetime']['reboot']
  case node['platform']
  when 'ubuntu'
    reboot 'reboot_after_upgrade' do
      action  :reboot_now
      reason  'Node needs to restart before continuing. Please rerun the script later.'
      only_if { ::File.exist?('/var/run/reboot-required') }
    end

  else
    log 'TODO: determine whether machine needs restarting'
  end
end
