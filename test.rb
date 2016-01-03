require_relative 'sudoku'

board_test = "1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--"


#driver code
# p cell_location(1, board_test_array)
#p cell_possibilities(1, board_test_array)

# p solve(board_test)
sudoku_test=Sudoku.new(board_test)
