require 'open-uri'
require 'json'

class Scrapper
  attr_reader :report

  def initialize(link)
    @link = link
  end

  def generate_report
    raise NotImplementedError
  end

  def save_report_locally_as_json
    File.open(filename_for_json, 'w') {|f| f.write(@report.to_json) }

    filename_for_json
  end

  private

  def get_doc_or_cache
    return File.open('offline/doc.html') { |f| Nokogiri::HTML(f) } if ENV['TESTING']

    Nokogiri::HTML(URI.open(@link))
  end

  def event_link_without_prefix
    @link
      .delete_prefix("https")
      .delete_prefix("://")
      .delete_prefix("www.")
  end

  def filename_for_json
    event_link = @link.delete_prefix('https://www.mtgtop8.com/')

    "#{event_link}.json"
  end

end
