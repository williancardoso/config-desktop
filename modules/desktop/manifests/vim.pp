
class desktop::vim (

  $dirs = ['/root/.vim','/root/.vim/autoload','/root/.vim/bundle'],

){

  file {
    $dirs:
      ensure  => directory,
      require => Package['vim-enhanced'];
    '/root/.vim/autoload/pathogen.vim':
      ensure  => present,
      source  => 'puppet:///modules/desktop/vim/pathogen.vim';
    '/root/.vimrc':
      ensure  => present,
      source  => 'puppet:///modules/desktop/vim/vimrc';
  }

  exec {
    'git clone git://github.com/tpope/vim-sensible.git':
      path    => '/usr/local/bin/:/bin/',
      command => 'cd ~/.vim/bundle && git clone git://github.com/tpope/vim-sensible.git';
    'git://github.com/rodjek/vim-puppet.git':
      path    => '/usr/local/bin/:/bin/',
      command => 'git clone git://github.com/rodjek/vim-puppet.git ~/.vim/bundle/puppet';
  }

}

