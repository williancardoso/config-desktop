### Install repositorio da Puppetlabs
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-fedora-22.noarch.rpm

### Install puppet-agent
dnf install puppet-agent --nogpgcheck

### export o path do Puppet
echo 'export PATH=/opt/puppetlabs/bin:$PATH' >> /root/.bashrc
