require 'player'

describe "Player" do
  subject(:raluca) {Player.new("Raluca")}

  describe "#name" do
    it "should return the player's name" do
      expect(raluca.name).to eq "Raluca"
    end
  end

end
