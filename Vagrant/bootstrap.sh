 #!/bin/bash

 echo "search cloudalbania.com" >> /etc/resolv.conf

if which puppet > /dev/null 2>&1; then
   echo 'Puppet Installed.'
      /opt/puppetlabs/bin/puppet agent --test 
 else
   echo 'Installing Puppet Agent.'
   rpm -ivh https://yum.puppet.com/puppet5/puppet5-release-el-7.noarch.rpm
   yum --nogpgcheck -y install puppet
   /opt/puppetlabs/bin/puppet agent --test 
 fi
