# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'aws/s3/version'

Gem::Specification.new do |s|
  s.name			  = %q{aws-S3}
  s.authors			  = ["Marcel Molina Jr."]
  s.summary			  = %q{Client library for Amazon's Simple Storage Service's REST API}
  s.description		  = %q{Client library for Amazon's Simple Storage Service's REST API}
  s.email			  = %q{marcel@vernix.org}
  s.homepage		  = %q{http://amazon.rubyforge.org/}
  s.version			  = Gem::Version.new(AWS::S3::Version)
  s.date			  = %q{2014-05-16}

  s.files			  = Dir.glob("{lib,bin,support}/**/*") + %w( CHANGELOG )
  s.extra_rdoc_files  = ["README.rdoc"]
  s.rdoc_options  = ['--title', "AWS::S3 -- Support for Amazon S3's REST api",
                     '--main',  'README',
                     '--line-numbers', '--inline-source']
  s.executables       << 's3sh'
  s.test_files        = Dir['test/**/*']
  s.require_path	  = "lib"
  s.add_runtime_dependency 'xml-simple'
  s.add_runtime_dependency 'builder'
  s.add_runtime_dependency 'mime-types'

  s.add_development_dependency 'debugger'
  s.add_development_dependency 'flexmock'

  s.license = "MIT"

  s.required_ruby_version     = '>= 1.9.2'
  s.required_rubygems_version = '>= 1.3.6'

  if s.respond_to? :specification_version then
    s.specification_version = 2
  end
end
