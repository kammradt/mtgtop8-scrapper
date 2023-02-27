# frozen_string_literal: true

Gem::Specification.new do |s|
  s.version = '0.0.6'
  s.required_ruby_version = '>= 3.1.2'
  s.homepage = 'https://github.com/kammradt/mtgtop8-scrapper'

  s.name = 'mtgtop8_scrapper'
  s.summary = 'Scrape data from MTGTop8 into simple reports'
  s.description = 'Scrape data from MTGTop8 into simple reports'

  s.authors = ['Vinicius Kammradt']
  s.email = 'vinicius.kammradt1@gmail.com'
  s.files = Dir.glob('{bin,lib}/**/*') + %w[README.md]

  s.add_runtime_dependency 'nokogiri', '~> 1.14', '>= 1.14.1'

  s.homepage = 'https://rubygems.org/gems/mtgtop8_scrapper'
  s.license = 'MIT'
  s.metadata['rubygems_mfa_required'] = 'true'
end
