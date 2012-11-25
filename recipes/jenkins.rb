include_recipe "needle-users::default"

group 'jenkins' do
  gid 2600
end

users_manage 'jenkins' do
    group_id 2600
    action [ :remove, :create ]
end

execute 'add github to known_hosts' do
  user 'jenkins'
  group 'jenkins'
  command "ssh-keyscan -H github.com > #{node['jenkins']['server']['home']}/.ssh/known_hosts"
  not_if { ::File.exists?(node['jenkins']['server']['home'] + '/.ssh/known_hosts') }
end