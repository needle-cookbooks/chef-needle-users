include_recipe "needle-users::default"

users_manage 'deploy' do
    group_id 2500
    action [ :remove, :create ]
end
