ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|

  config.vm.provision "shell", path: "initializer.sh"

  NodeCount = 3

  (1..NodeCount).each do |i|
    config.vm.define "etcd#{i}" do |etcdnode|
      etcdnode.vm.box = "bento/ubuntu-20.04"
#      etcdnode.vm.hostname = "etcd#{i}.example.com"
      etcdnode.vm.network "private_network", ip: "192.168.56.11#{i}"
      etcdnode.vm.provider "virtualbox" do |v|
        v.name = "etcd#{i}"
        v.memory = 1024
        v.cpus = 1
      end
    end
  end
end
