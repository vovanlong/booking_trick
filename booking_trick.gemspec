
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'booking_trick/version'
require 'booking_trick/user'
require 'booking_trick/room'

Gem::Specification.new do |spec|
  spec.name          = 'booking_trick'
  spec.version       = BookingTrick::VERSION
  spec.authors       = ['Long Vo']
  spec.email         = ['vovanlong1997@gmail.com']

  spec.summary       = %q{just for fun}
  spec.description   = %q{Trick people random choose room}
  spec.homepage      = 'https://github.com/vovanlong/booking_trick.git'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = 'https://rubygems.org/'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/vovanlong/booking_trick.git/tree/master'
  spec.metadata['changelog_uri'] = 'https://github.com/vovanlong/booking_trick/tree/master/CHANGELOG.md'
  spec.metadata['documentation_uri'] = 'https://github.com/vovanlong/booking_trick/tree/master/README.md'
  spec.metadata['bug_tracker_uri']   = 'https://github.com/vovanlong/booking_trick/issues'


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
end
