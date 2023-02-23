require 'nokogiri'
require_relative 'scrapper'

class MTGTop8Scrapper < Scrapper
  def generate_report
    @doc = get_doc_or_cache

    players = top_8_players
    format = event_format
    date = event_date
    event_link = event_link_without_prefix

    @report = { players:, date:, format:, event_link: }
  end

  private

  def top_8_players
    # TODO: Handle events with less than/more than 8
    indexes_for_top_8_player_table = (2..9).to_a

    indexes_for_top_8_player_table.map do |i|
      rank = rank_value(i)
      player = player_value(i)
      deck = deck_value(i)

      { rank:, player:, deck: }
    end.sort_by { |player| player[:rank] }
  end

  def event_format
    path = '/html/body/div/div/div[7]/div[1]/div/div[1]/div[1]/div[1]'

    @doc.at(path).text.strip
  end

  def event_date
    path = '/html/body/div/div/div[7]/div[1]/div/div[1]/div[1]/div[2]'

    @doc.at(path).text.partition('-').last.strip
  end

  def rank_value(i)
    path = "/html/body/div/div/div[7]/div[1]/div/div[1]/div[#{i}]/div/div[1]"

    @doc.at(path).text.strip.to_i
  end

  def player_value(i)
    path = "/html/body/div/div/div[7]/div[1]/div/div[1]/div[#{i}]/div/div[3]/div[2]/a"

    @doc.at(path).text.strip
  end

  def deck_value(i)
    path = "/html/body/div/div/div[7]/div[1]/div/div[1]/div[#{i}]/div/div[3]/div[1]"

    @doc.at(path).text.strip
  end
end
