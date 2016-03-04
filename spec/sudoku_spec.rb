require_relative '../sudoku'

# describe 'playGame' do
#   let (:board) {File.readlines('sudoku_puzzles.txt').first.chomp}
#   let(:game) {Sudoku.new(:board)}
#   describe 'Sodoku' do
#    it 'A solved column should sum to 45' do
#      expect(game.board.first).sum.to eq(45)
#    end
#  end
# end

describe Sudoku do
​
  let (:board) {File.readlines('sudoku_puzzles.txt').first.chomp}
  let (:game) {Sudoku.new(board)}
  let (:solved_game) {game.solve}
  let (:game_board) {game.board}
​
  # describe 'A Sudoko board' do
  #   it 'has 81 characters' do
  #     expect(game_board.length).to eq(81)
  #   end
  # end
​
  describe 'Solved Sodoku box' do
    it 'has a sum of 45 for each box' do
      box_b2_array = []
      box_b2_array << solved_game[30..32]
      box_b2_array << solved_game[39..41]
      box_b2_array << solved_game[48..50]
      box_b2_sum = box_b2_array.flatten.reduce{|sum, n| sum + n}
      expect(box_b2_sum).to eq(45)
    end
​
    it 'has one of each number in 1 through 9 in each box' do
      box_b2_array = []
      box_b2_array << solved_game[30..32]
      box_b2_array << solved_game[39..41]
      box_b2_array << solved_game[48..50]
      expect(box_b2_array.flatten.uniq.length).to eq(9)
    end
  end
​
  describe 'Solved Sodoku row' do
    it 'has a sum of 45 for each row' do
      row1 = []
      row1 << solved_game[0..8]
      row1_sum = row1.flatten.reduce{|sum, n| sum + n}
      expect(row1_sum).to eq(45)
    end
​
    it 'has one of each number in 1 through 9 in each row' do
      row1 = []
      row1 << solved_game[0..8]
      expect(row1.flatten).to eq([1, 4, 5, 8, 9, 2, 6, 7, 3])
    end
  end
​
  describe 'Solved Sodoku column' do
    it 'has a sum of 45 for each column' do
      column3 = []
      column3 << solved_game[3]
      column3.insert(1, solved_game[12], solved_game[21], solved_game[30], solved_game[39], solved_game[48], solved_game[57], solved_game[66], solved_game[75])
      column3_sum = column3.flatten.reduce{|sum, n| sum + n}
      expect(column3_sum).to eq(45)
    end
​
    it 'has one of each number in 1 through 9 in each column' do
      column3 = []
      column3 << solved_game[3]
      column3.insert(1, solved_game[12], solved_game[21], solved_game[30], solved_game[39], solved_game[48], solved_game[57], solved_game[66], solved_game[75])
      expect(column3.flatten).to eq([8, 1, 4, 2, 5, 9, 6, 7, 3])
    end
  end
​
  # describe ' ' do
  #   it ' ' do
  #     expect().to  eq()
  #   end
  # end
​
end

