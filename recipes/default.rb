#
# Cookbook Name:: elasticsearch_practice
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

node.default['java']['jdk_version'] = '7'
include_recipe 'java'