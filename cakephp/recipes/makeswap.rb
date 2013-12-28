execute "make-swap-space" do
  command "sudo dd if=/dev/zero of=/swapfile bs=1024 count=512k;sudo mkswap /swapfile;sudo swapon /swapfile;"
  creates "/swapfile"
  action :run
end