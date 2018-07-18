# puppet-master
Efforts to set up and managed a puppet master.

Install the puppet server
rpm -Uvh https://yum.puppet.com/puppet5/puppet5-release-el-7.noarch.rpm
yum install puppetserver

# restore configs
After setting up the puppet master server clone this repo in the following folder

/etc/puppetlabs/code/environments/production
