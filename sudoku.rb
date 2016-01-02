class Sudoku
  def initialize(board_string)
    @board = board_string
    @board_array = board.split(//)
    @possibilities_hash = {}
  end

  def solve
  end

  def board

  end

  # Returns a string representing the current state of the board
  def to_s
  end
end

# Pseudocode

# important variables:
# Board is the entire string
# Box, Row and Column variables are are defined as a string of string indices by variable assignment
  # BoxA1 = indices 0,1,2,9,10,11 etc
  # Row1 = Board[0..8] etc
  # Column1 = 0 || x%9 = 0
# Cell is the index in the Board string

# helper methods
# cell_possibilities
# id box, row, column (? come back to this)


def solve
  board.each_with_index do |cell, index|
    if cell = "-"
      cell_possibilities(index, board)
    end
  end
end

def cell_possibilities(index, board)
  array_cell_possibilities = []
  #check + push row
  #check + push column
  #check + push box


end

def which_box(index)
  box_hash = {
  :boxA1 => [0, 1, 2, 9, 10, 11, 18, 19, 20],
  :boxA2 => [3, 4, 5, 12, 13, 14, 21, 22, 23],
  :boxA3 => [6, 7, 8, 15, 16, 17, 24, 25, 26],
  :boxB1 => [27, 28, 29, 36, 37, 38, 45, 46, 47],
  :boxB2 => [30, 31, 32, 39, 40, 41, 48, 49, 50],
  :boxB3 => [33, 34, 35, 42, 43, 44, 51, 52, 53],
  :boxC1 => [54, 55, 56, 63, 64, 65, 72, 73, 74],
  :boxC2 => [57, 58, 59, 66, 67, 68, 75, 76, 77],
  :boxC3 => [60, 61, 62, 69, 70, 71, 78, 79, 80]
}

  box_hash.each do |key_box_symbol, value_array_indices|
    value_array_indices.each do |i|
      if index == i
        return value_array_indices
      end
  end
end #return an array of indices of box


def which_column(index)
end #return an array of indices of column

def which_row(index)
end #return an array of indices of row


# ITERATE through the board string by index
# DUPLICATE the Board string as solved_board
  # IF the cell is blank ('-')

    # call cell_possibilities helper method

      # cell_possibilities method takes the cell index as its argument
        # establish new hash to store possibilities 'possibilities_hash'
        # establish its box row and column (helper methods tbd)

        # check all the numbers that appear in the box, row, and column
          # IF the a number from 1 to 9 does NOT appear
            # push that number into an array of possible solutions

              # IF the length of the array is equal to 1 then the cell is solved
                # push that value to the solved_board string at that index (the key)

            # push to the possibilities_hash with the cell index as the key and the array as the value






# Main question is how does this solve
