include_recipe "needle-users::default"

group 'jenkins' do
  gid 2600
end

users_manage 'jenkins' do
    group_id 2600
    action [ :remove, :create ]
end