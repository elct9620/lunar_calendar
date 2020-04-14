# frozen_string_literal: true

require_relative 'lib/lunar_calendar/version'

Gem::Specification.new do |spec|
  spec.name          = 'lunar_calendar'
  spec.version       = LunarCalendar::VERSION
  spec.authors       = ['蒼時弦也']
  spec.email         = ['contact@frost.tw']

  spec.summary       = 'The calculator to calculate lunar calendar'
  spec.description   = 'The calculator to calculate lunar calendar'
  spec.homepage      = 'https://github.com/elct9620/lunar_calendar'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/elct9620/lunar_calendar'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`
      .split("\x0")
      .reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop', '~> 0.80.1'
end
