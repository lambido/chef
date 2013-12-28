Vagrant::Config.run do |config|
  config.vm.box = "lucid32"
   config.vm.provision :chef_solo do |chef|
     chef.cookbooks_path = "."
     chef.add_recipe "cakephp::makeswap"
     chef.add_recipe "cakephp::default"
     chef.log_level = :debug
  end 
end
