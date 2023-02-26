# frozen_string_literal: true

Gem::Specification.new do |s|
  s.version = '0.0.3'
  s.required_ruby_version = '>= 3.1.2'

  s.name = 'mtgtop8_scrapper'
  s.summary = 'Scrape data from MTGTop8 into simple reports'
  s.description = 'Scrape data from MTGTop8 into simple reports'

  s.authors = ['Vinicius Kammradt']
  s.email = 'vinicius.kammradt1@gmail.com'
  s.files = Dir.glob('{bin,lib}/**/*') + %w[README.md]

  s.homepage = 'https://rubygems.org/gems/mtgtop8_scrapper'
  s.license = 'MIT'
  s.metadata['rubygems_mfa_required'] = 'true'
end
