require_relative '../sudoku'
describe 'playGame' do
  let (:board) {File.readlines('sudoku_puzzles.txt').first.chomp}
  let(:game) {Sudoku.new(:board)}
  describe 'Sodoku' do
   it 'A solved column should sum to 45' do
     expect(game.board.first).sum.to eq(45)
   end
 end
end



