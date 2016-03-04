require_relative 'sudoku_r2'

# The sudoku puzzles that your program will solve can be found
# in the sudoku_puzzles.txt file.
#
# Currently, Line 16 defines the variable board_string to equal
# the first puzzle (i.e., the first line in the .txt file).
# After your program can solve this first puzzle, edit
# the code below, so that the program tries to solve
# all of the puzzles.
#
# Remember, the file has newline characters at the end of each line,
# so we call String#chomp to remove them.





# board_string2 = File.readlines('sudoku_puzzles.txt')[4].chomp
# game2 = Sudoku.new(board_string2)
# print game2.solve

# board_string5 = File.readlines('sudoku_puzzles.txt')[4].chomp
# game5 = Sudoku.new(board_string5)
# print game5.solve

board_string6 = File.readlines('sudoku_puzzles.txt')[5].chomp
game6 = Sudoku.new(board_string6)
print game6.solve



