require_relative 'client'

client = Azure::ARM::Compute::Client.new('2016-03-30')
puts client.model_types.virtual_machine_instance_view

puts 'Hello World!!!'