node default {

$git_settings = {
  'provider'    => 'rugged',
  'private_key' => '/root/.ssh/blah',
}
class { 'r10k':
  sources => {
    'secteam' => {
      'remote'  => 'ssh://git@github.com:coffeecoco/manifests.git',
      'basedir' => '/etc/puppetlabs/code/environments/',
      'prefix'  => false,
      git_settings => $git_settings, 
   },
  },
}
}
