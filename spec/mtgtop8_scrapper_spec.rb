require 'spec_helper'
require_relative '../lib/mtgtop8_scrapper'

RSpec.describe MTGTop8Scrapper.name do
  subject { MTGTop8Scrapper.new(link) }

  let(:link) { 'https://mtgtop8.com/event?e=41020&d=504919&f=PAU' }

  describe '#generate_report' do
    it 'generates' do
      expect(subject.generate_report).to eq(
                                           {
                                             date: "27/01/23",
                                             format: "Pauper",
                                             event_link: "mtgtop8.com/event?e=41020&d=504919&f=PAU",
                                             players: [
                                               { rank: 1, player: "Lukas Kuhn Schuster", deck: "Walls Combo" },
                                               { rank: 2, player: "Raphael Günther", deck: "Dimir Terror" },
                                               { rank: 3, player: "Robertinho Silva", deck: "Urzatron" },
                                               { rank: 4, player: "Guilherme Wp", deck: "Caw Gate" },
                                               { rank: 5, player: "Hovelha Pop", deck: "Slivers" },
                                               { rank: 6, player: "Angelo Graper", deck: "Boros Tokens" },
                                               { rank: 7, player: "João Pedro", deck: "Dimir Terror" },
                                               { rank: 8, player: "João Cordeiro", deck: "Aura Hexproof" }
                                             ],
                                           }
                                         )
    end
  end
end