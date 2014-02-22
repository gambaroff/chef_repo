# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "sloniki"
client_key               "#{current_dir}/sloniki.pem"
validation_client_name   "public_void-validator"
validation_key           "#{current_dir}/public_void-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/public_void"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
