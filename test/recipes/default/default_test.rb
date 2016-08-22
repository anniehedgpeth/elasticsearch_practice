# # encoding: utf-8

# Inspec test for recipe elasticsearch_practice::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe command('java') do
    it { should exist }
end

describe directory('/usr/share/elasticsearch/plugins/head') do
    it { should exist }
end