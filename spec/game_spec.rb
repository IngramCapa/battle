require 'game'

describe "Game" do 

    subject(:game) { Game.new }
    subject(:kat) {Player.new("Kat")}
    subject(:pete) {Player.new("Pete")}

    describe "attack" do

        context "when player 1 attacks player 2" do
            it "should reduce player 2's hit points" do 
            expect{ game.attack(pete) }.to change { pete.hp }.by(-10)
            end 
        end

        # context "when player 2 attacks player 1" do
        #     it "should reduce player 2's hit points" do 
        #     expect{ kat.attack(pete) }.to change { pete.hp }.by(-10)
        #     end 
        # en
    end
end