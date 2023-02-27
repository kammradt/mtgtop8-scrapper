# If you are offline/don't want to hit the real server,
# you can use the flag ENV['TESTING'] for work with files under /offline
#
# Just use any truthy value for the ENV['TESTING'] var, such as '1' or 'true'

require 'mtgtop8_scrapper'

link = 'https://www.mtgtop8.com/event?e=41158&d=505864&f=PAU'

# Just create an instance passing a link as argument
scrapper = MTGTop8Scrapper.new(link)

# This generates and returns a report
scrapper.generate_report
# That you can also access later
puts scrapper.report

# You can also save the report locally as json
scrapper.save_report_locally_as_json
