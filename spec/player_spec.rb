require './lib/player.rb'

describe "Player" do
  subject(:kat) {Player.new("Kat")}
  subject(:pete) {Player.new("Pete")}

  describe "#name" do
    it "should return the player's name" do
      expect(kat.name).to eq "Kat"
    end
  end

  describe "#deduct" do
  
  end

end
