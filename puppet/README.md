# desktop

## install Puppet
```bash
yum install http://yum.puppetlabs.com/fedora/f23/PC1/x86_64/puppet-agent-1.5.1-1.fedoraf23.x86_64.rpm
```

## executando o modulo
```puppet
/opt/puppetlabs/bin/puppet apply --hiera_config=hiera.yaml --modulepath=modules start.pp
```

