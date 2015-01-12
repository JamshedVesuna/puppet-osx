# Public: Hide Hidden Files by default.
class osx::finder::hide_hidden_files {
  include osx::finder

  boxen::osx_defaults { 'Hide Hidden Files':
    user   => $::boxen_user,
    key    => 'AppleShowAllFiles',
    domain => 'com.apple.finder',
    value  => false,
    notify => Exec['killall Finder'];
  }
}
