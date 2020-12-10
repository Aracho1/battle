require "player"

describe "Player" do
  let(:subject) { Player.new("Harry") }

  it "returns its name" do
    expect(subject.name).to eq "Harry"
  end

  it "reduce HP by 10" do
    expect { subject.receive_damage }.to change { subject.hp }.by(-10)
  end
end
