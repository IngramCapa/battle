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

        context "it damages the player" do
            it "should reduce player 2's hit points" do 
                expect(player_2).to receive(:receives_damage)
                game.attack(player_2)
            end 

            it "should reduce player 1's hit points" do
                expect(player_1).to receive(:receives_damage)
                game.attack(player_1)
            end
        end

    end

    describe '#current_turn' do
        it 'starts as player 1' do
            expect(game.current_turn).to eq player_1
        end
    end

    describe "#switch_turns" do
        it "switches the turn" do
            game.switch_turns
            expect(game.current_turn).to eq player_2
        end
    end
end
