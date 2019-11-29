require 'game'

describe "Game" do 

    subject(:game) { Game.new(player_1, player_2) }
    let(:player_1) {double :player}
    let(:player_2) {double :player}

    describe "players" do
        it "should retrieve player 1" do
            expect(game.player_1).to eq player_1
        end

        it "should retrieve player 2" do
            expect(game.player_2).to eq player_2
        end

    end
    describe "attack" do

        context "when player 1 attacks player 2" do
            it "should reduce player 2's hit points" do 
            expect{ game.attack(player_2) }.to change { player_2.hp }.by(-10)
            end 
        end

        # context "when player 2 attacks player 1" do
        #     it "should reduce player 2's hit points" do 
        #     expect{ pete.attack(kat) }.to change { kat.hp }.by(-10)
        #     end 
        # en
    end
end