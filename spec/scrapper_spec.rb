# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/scrapper'

RSpec.describe Scrapper.name do
  subject { Scrapper.new(link) }

  let(:link) { 'some_fake_url' }

  context 'abstract methods' do
    it '#generate_report' do
      expect { subject.generate_report }.to raise_error(NotImplementedError)
    end
  end
end
