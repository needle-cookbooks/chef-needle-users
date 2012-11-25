include_recipe "needle-users::default"

users_manage 'jenkins' do
    group_id 2600
    action [ :remove, :create ]
end