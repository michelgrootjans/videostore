require 'spec_helper'
require 'bowling_game'

describe BowlingGame do
  subject(:game){ BowlingGame.new }
  it { expect(game.score).to eq 0 }
end