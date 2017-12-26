
class desktop::vim (

){

  file {
    '/root/.vimrc':
      ensure  => present,
      source  => 'puppet:///modules/desktop/vim/vimrc';
    '/root/.vim':
      ensure  => directory,
      source  => 'puppet:///modules/desktop/vim/plugins',
      recurse => true,
  }

  /*
  exec {
    'git clone git://github.com/tpope/vim-sensible.git':
      path    => '/usr/local/bin/:/bin/',
      command => 'cd ~/.vim/bundle && git clone git://github.com/tpope/vim-sensible.git';
    'git://github.com/rodjek/vim-puppet.git':
      path    => '/usr/local/bin/:/bin/',
      command => 'git clone git://github.com/rodjek/vim-puppet.git ~/.vim/bundle/puppet';
  }
  */

}

