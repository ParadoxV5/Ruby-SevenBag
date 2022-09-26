# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'SevenBag'
  spec.summary = ''
  spec.version = '1.0-SNAPSHOT'
  spec.required_ruby_version = '>= 2'
  
  spec.author = 'ParadoxV5'
  spec.license = ''

  github = 'https://github.com/ParadoxV5/Ruby-SevenBag'
  spec.metadata['source_code_uri'] =
    spec.metadata['homepage_uri'] = github
  spec.metadata['changelog_uri'] = "#{github}/commits"
  spec.metadata['bug_tracker_uri'] = "#{github}/discussions"
  
  spec.files = Dir['**/*']
  spec.require_paths = ['lib']
  
  spec.add_development_dependency 'rbs', '~> 2.6.0'
  spec.add_development_dependency 'rspec', '~> 3.11.0'
end
