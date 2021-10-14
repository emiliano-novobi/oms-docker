# -*- mode: ruby -*-
# vi: set ft=ruby :

# Change odoo environment box:
#     Odoo 10, 11, 12, 13: novobi/odoo-box
#     Odoo 14            : novobi/odoo14-box
#     Odoo 15            : novobi/odoo15-box
#
# Fixed IP for VM:
#     config.vm.network "private_network", ip: "172.28.128.3"   # Any private IP you want
#
# Forwarded Port:
#     config.vm.network "forwarded_port", guest: 80, host: 8080
# This will allow accessing port 80 on the guest via port 8080 on the host.

Vagrant.configure("2") do |config|

    config.vm.box = "novobi/odoo14-box"
    config.vm.hostname = "odoo-vagrant"
    config.vm.network "private_network", type: "dhcp"
    config.vm.synced_folder ".", "/opt/odoo", owner: "odoo", group: "odoo", :mount_options => ["dmode=777", "fmode=777"]
    config.vm.provision "shell", inline: "hostname -I | cut -d' ' -f2", run: "always"

    # workaround for the freezing issue with newer versions of Virtual Box and Vagrant
    config.vm.provider "virtualbox" do |vb|
        vb.memory: 2048
        vb.cpus: 2
        # If you use Windows, use the line below.
        vb.customize [ "modifyvm", :id, "--uartmode1", "file", File::NULL ]
        # If you use Linux, please comment the line above and uncomment the line below.
        # vb.customize [ "modifyvm", :id, "--uartmode1", "file", "/dev/null" ]
    end

end
