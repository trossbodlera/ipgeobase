# frozen_string_literal: true

require_relative 'lib/ipgeobase/version'

Gem::Specification.new do |spec|
  spec.name          = 'ipgeobase'
  spec.version       = Ipgeobase::VERSION
  spec.authors       = ['Pavel Polubarkin']
  spec.email         = ['pavel.polubarkin@gmail.com']
  spec.summary       = 'Example summary'
  spec.description   = 'Example description'
  spec.homepage      = 'https://github.com/trossbodlera/ipgeobase.git'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/trossbodlera/ipgeobase.git'
  spec.metadata['changelog_uri'] = 'https://github.com/trossbodlera/ipgeobase.git'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
