system_groups = search("groups", "platform:#{node['platform']}")

system_groups.each do |group_data|
    group group_data['id'] do
        members group_data['members']
        action :create
    end
end