# -*- encoding: utf-8 -*-
Gem::Specification.new do |spec|
  spec.name          = 'motion-keyboard-avoiding'
  spec.version       = '0.0.2'
  spec.authors       = ['Devon Blandin']
  spec.email         = ['dblandin@gmail.com']
  spec.description   = %q{Make iOS text fields avoid the keyboard}
  spec.summary       = %q{Make iOS text fields avoid the keyboard}
  spec.homepage      = 'https://github.com/dblandin/motion-keyboard-avoiding'
  spec.license       = 'MIT'

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake'
end
