# Puppet Master
Efforts to set up and manage a puppet master in a CentOS7 server.

Install the puppet server

    rpm -Uvh https://yum.puppet.com/puppet5/puppet5-release-el-7.noarch.rpm
    yum install puppetserver

# Puppet Agents
Install the puppet agent in your nodes
    
    rpm -Uvh https://yum.puppet.com/puppet5/puppet5-release-el-7.noarch.rpm
    yum install puppet-agent

If your server is limited in RAM then lower the memory dedicated for the puppet server like this in file
    
    $ sed -i 's/2g/512m/g' /etc/sysconfig/puppetserver    
    $ grep JAVA_ARGS /etc/sysconfig/puppetserver
    JAVA_ARGS="-Xms512m -Xmx512m -Djruby.logger.class=com.puppetlabs.jruby_utils.jruby.Slf4jLogger"
    $ systemctl start puppetserver
    $ systemctl enable puppetserver

# Restore configs from this repo to your puppet dir
After setting up the puppet master server clone this repo in the following folder

    yum -y install git
    cd /etc/puppetlabs/code/environments/production
    git init
    git remote add origin git@github.com:besmirzanaj/puppet-master.git
    git branch --set-upstream-to=origin/master master
    git checkout master
    git pull

And you have a working copy of the puppet master.

Remember to adjust the dns records for your nodes to connect to the puppet master. If you don't control a dns server then you can manually create host records for your puppet master in /etc/resolv.conf like this
    
    # cat /etc/resolv.conf
    # [ip address of puppet master] puppet
    # example
    # 192.168.0.222     puppet
    
after making sure you can ping the host "puppet" make also sure that port 8140 of puppet master is reachable from your hosts (a simple "telnet puppet 8140" can verify this) then you are ready to start deploying puppet configuration management to your hosts.

# First time joining a puppet master
From your node run
    
    puppet agent --test
    
A new certificate request has been created and sent to the puppet master. In the puppet master then verify the request of that specific hostname by:

    puppet cert list
    
and to apprive the request:

    puppet cert sign "client hostname"
    
Now the configurations are ready to be deployed to the node. A new "puppet agent --test" command will do.
