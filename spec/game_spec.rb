require 'game'

describe 'Game' do
  let(:player_1) { double("Neville")}
  let(:player_2) { double("Ron")}
  let(:game) { Game.new(player_1, player_2)}

  it 'acepts two Player instances' do
    expect(Game).to receive(:new).with(player_1, player_2)
    Game.new(player_1, player_2)
  end

  it 'can attack players' do
    allow(player_2).to receive(:receive_damage)
    expect(player_2).to receive(:receive_damage)
    game.attack
  end

end