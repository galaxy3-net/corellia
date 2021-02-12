# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "galaxy3/corellia"
  config.vm.box_version = "2020.10.25-1550"
  config.vm.hostname = "corellia"
  config.vm.guest = :windows
  config.winrm.username = "vagrant"
  config.winrm.password = "vagrant"
  config.vm.network "private_network", ip: "10.55.55.15"
  config.vm.communicator = :winrm
  config.winrm.ssl_peer_verification = false

  #config.vm.network "private_network", ip: "10.55.55.9"

  #config.vm.synced_folder	"../../",	"/vagrant", owner: "1001", group: "1001"
  config.vm.synced_folder "~/repos/uci", "/repos", owner: "1001", group: "1001", mount_options: ["fmode=777", "dmode=777"], create: true
  config.vm.synced_folder "../../Downloads", "/Downloads", create: true
#  config.vm.synced_folder "../../Downloads", "/Downloads", owner: "1001", group: "1001", mount_options: ["fmode=777", "dmode=777"], create: true
  #config.vm.synced_folder "../../log/nakadia", "/var/log/", owner: "1001", group: "1001", mount_options: ["fmode=777", "dmode=777"], create: true

  #config.vm.network "forwarded_port", guest: 8000, host: 8000, host_ip: "127.0.0.1", auto_correct: true
  config.vm.network "forwarded_port", guest: 3389, host: 3389, host_ip: "127.0.0.1", auto_correct: true
  config.vm.network "forwarded_port", guest: 5901, host: 5901, host_ip: "127.0.0.1", auto_correct: true

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    # Uncomment ONE the lines below to control how much RAM Vagrant gives the VM
    # We recommend starting with 4096 (4Gb), and moving down if necessary
    # vb.memory = "1024" # 1Gb
    # vb.memory = "2048" # 2Gb
    # vb.memory = "4096" # 4Gb
    #vb.name = "#{ENV['boxname']} (Win10Ent)"
    vb.name = "Corellia"
    vb.gui = false
    vb.cpus = "4"
    vb.memory = "4096"

    vb.customize ['modifyvm', :id, '--vrde', 'on']
    vb.customize ['modifyvm', :id, '--vrdeport', '5002']
    vb.customize ['modifyvm', :id, '--graphicscontroller', 'vboxsvga']
    vb.customize ["modifyvm", :id, "--description", File.read("Description")]
    #vb.customize ['modifyvm', :id, '--firmware', 'efi64']
    #vb.customize ['modifyvm', :id, '--nictype1', 'virtio']
  end
#   config.vm.provision "shell", inline: <<-SHELL
#     tr -d '\r' < /vagrant/functions/ready >/usr/local/bin/ready && chmod 0700 /usr/local/bin/ready
#     /usr/local/bin/ready
#     /usr/local/bin/install_pkgs
#     /usr/local/bin/pull_repos
#     iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
#     iptables -A INPUT -p tcp --dport 3389 -m state --state NEW -j ACCEPT
#
#     setup_xrdp
#     setup_vnc
#SHELL
end