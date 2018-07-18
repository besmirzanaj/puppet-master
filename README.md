# puppet-master
Efforts to set up and managed a puppet master in a CentOS7 server.

Install the puppet server

    rpm -Uvh https://yum.puppet.com/puppet5/puppet5-release-el-7.noarch.rpm
    yum install puppetserver

If your server is limited in RAM then lower the memory dedicated for the puppet server like this in file
    
    $ grep JAVA_ARGS /etc/sysconfig/puppetserver
    #JAVA_ARGS="-Xms2g -Xmx2g -Djruby.logger.class=com.puppetlabs.jruby_utils.jruby.Slf4jLogger"
    JAVA_ARGS="-Xms512m -Xmx512m -Djruby.logger.class=com.puppetlabs.jruby_utils.jruby.Slf4jLogger"

# restore configs
After setting up the puppet master server clone this repo in the following folder

    cd /etc/puppetlabs/code/environments/production
    git clone https://github.com/besmirzanaj/puppet-master
