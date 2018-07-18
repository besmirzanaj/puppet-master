# puppet-master
Efforts to set up and managed a puppet master in a CentOS7 server.

Install the puppet server

    rpm -Uvh https://yum.puppet.com/puppet5/puppet5-release-el-7.noarch.rpm
    yum install puppetserver

If your server is limited in RAM then lower the memory dedicated for the puppet server like this in file
    
    $ sed -i 's/2g/512m/g' /etc/sysconfig/puppetserver    
    $ grep JAVA_ARGS /etc/sysconfig/puppetserver
    JAVA_ARGS="-Xms512m -Xmx512m -Djruby.logger.class=com.puppetlabs.jruby_utils.jruby.Slf4jLogger"

# restore configs
After setting up the puppet master server clone this repo in the following folder

    yum -y install git
    git clone https://github.com/besmirzanaj/puppet-master /etc/puppetlabs/code/environments/production
    cd /etc/puppetlabs/code/environments/production
