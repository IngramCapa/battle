require './lib/player.rb'

describe "Player" do
  subject(:kat) {Player.new("Kat")}
  subject(:pete) {Player.new("Pete")}

  describe "#name" do
    it "should return the player's name" do
      expect(kat.name).to eq "Kat"
    end
  end

  describe '#hp' do 
   it "should return the player's hit points" do
     expect(kat.hp).to eq(Player::DEFAULT_HIT_POINTS) 
   end
  end

  context "when player 1 attacks player 2" do 

    it "should reduce player 2's hit points" do 
      expect{ kat.attack(pete) }.to change { pete.hp }.by(-10)
    end 
  end

  context "when player 2 attacks player 1" do 

    it "should reduce player 1's hit points" do 
      expect{ pete.attack(kat) }.to change { kat.hp }.by(-10)
    end 
  end
end
