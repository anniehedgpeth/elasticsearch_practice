#
# Cookbook Name:: elasticsearch_practice
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

node.default['java']['jdk_version'] = '7'
include_recipe 'java'

node.default['elasticsearch']['version'] = '2.3.4'
node.default['elasticsearch']['install_type'] = :package
node.default['elasticsearch']['download_urls']['debian'] = 'https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-%s.deb'

include_recipe 'chef-sugar'

# see README.md and test/fixtures/cookbooks for more examples!
elasticsearch_user 'elasticsearch'
elasticsearch_install 'elasticsearch' do
  type node['elasticsearch']['install_type'].to_sym # since TK can't symbol.
end
elasticsearch_configure 'elasticsearch'
elasticsearch_service 'elasticsearch'

elasticsearch_plugin 'head' do
  url 'mobz/elasticsearch-head'
end