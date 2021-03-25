Vagrant.configure("2") do |config|
  config.vm.define "nfs-server" do |m|
      m.vm.box = "ubuntu/xenial64"
      m.vm.network "private_network", ip: "192.168.34.10"
      m.vm.hostname = "nfs-server"
      m.vm.provision "shell", path: "nfs-server-install.sh"
      m.vm.provider :virtualbox do |vb|
        vb.customize [ 'modifyvm', :id, '--memory', '1024' ]
        vb.customize [ 'modifyvm', :id, '--name', 'nfs-server' ]
      end		
  end
  config.vm.define "nfs1" do |m|
      m.vm.box = "ubuntu/xenial64"
      m.vm.network "private_network", ip: "192.168.34.11"
      m.vm.hostname = "nfs1"
      m.vm.provision "shell", path: "nfs-client-install.sh"
      m.vm.provider :virtualbox do |vb| 
        vb.customize [ 'modifyvm', :id, '--memory', '512' ]
        vb.customize [ 'modifyvm', :id, '--name', 'nfs1' ]
      end
  end
 config.vm.define "nfs2" do |m|
      m.vm.box = "ubuntu/xenial64"
      m.vm.network "private_network", ip: "192.168.34.12"
      m.vm.hostname = "nfs2"
      m.vm.provision "shell", path: "nfs-client-install.sh"
      m.vm.provider :virtualbox do |vb| 
        vb.customize [ 'modifyvm', :id, '--memory', '512' ]
        vb.customize [ 'modifyvm', :id, '--name', 'nfs2' ]
      end
  end
end
