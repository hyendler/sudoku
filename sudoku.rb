class Sudoku
  def initialize(board_string)
    @board = board_string
  end

# this method takes the board as a string, converts it to an array
# if a cell is empty it calls the cell_possibilities method
# returns a solved board as an array
def solve
  board_array = @board.split(//)
  possibilities_hash = {}
  board_array.map! do |cell|
    if cell != "-"
      cell = cell.to_i
    else
      cell = "-"
    end
  end

  board_array.each_with_index do |cell, index|
    if cell == "-"
      possible_solutions=cell_possibilities(index, board_array)
      possibilities_hash[index] = possible_solutions
    end

  end
  puts possibilities_hash
end

# this method takes a cell's index
# it calls the which_x methods (box, column, row)
# it returns one array of the indices for all cells to which a particular cell belongs
def cell_location(index, board_array)
  cell_location_index_array = []

  cell_location_index_array << which_box(index)
  cell_location_index_array << which_column(index)
  cell_location_index_array << which_row(index)

  cell_location_index_array.flatten!

end


# this method takes an empty cell's index and the board array
# it calls the cell_location method
# returns the array of possible solutions for a cell
def cell_possibilities(index, board_array)
  cell_location_index_array= cell_location(index, board_array)
  solved_cell_index_array = cell_location_index_array.keep_if {|i| board_array[i] != "-"}

  solved_cell_values_array = []
  solved_cell_index_array.each do |i|
    solved_cell_values_array.push(board_array[i])
  end

  options = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  solved_cell_values_array.each do |value|
      options.delete_if{|number| number==value}
  end
  options
end



# this method takes a cell's index
# it iterates through the box_hash
# returns all indicies in that cell's box
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
  end

end

# this method takes a cell's index
# it iterates through the column_hash
# returns all indicies in that cell's column
def which_column(index)
  column_hash = {
    :column_zero => [0,9,18,27,36,45,54,63,72],
    :column_one => [1,10,19,28,37,46,55,64,73],
    :column_two => [2,11,20,29,38,47,56,65,74],
    :column_three => [3,12,21,30,39,48,57,66,75],
    :column_four => [4,13,22,31,40,49,58,67,76],
    :column_five => [5,14,23,32,41,50,59,68,77],
    :column_six => [6,15,24,33,42,51,60,69,78],
    :column_seven => [7,16,25,34,43,52,61,70,79],
    :column_eight => [8,17,26,35,44,53,62,71,80]
  }

  column_hash.each do |key_column_symbol, value_array_indices|
    value_array_indices.each do |i|
      if index == i
        return value_array_indices
      end
    end
  end
end

# this method takes a cell's index
# it iterates through the row_hash
# returns all indicies in that cell's row
def which_row(index)
  row_hash= {
    :row_zero => [0,1,2,3,4,5,6,7,8],
    :row_one => [9,10,11,12,13,14,15,16,17],
    :row_two => [18,19,20,21,22,23,24,25,26],
    :row_three => [27,28,29,30,31,32,33,34,35],
    :row_four => [36,37,38,39,40,41,42,43,44],
    :row_five => [45,46,47,48,49,50,51,52,53],
    :row_six => [54,55,56,57,58,59,60,61,62],
    :row_seven => [63,64,65,66,67,68,69,70,71],
    :row_eight => [72,73,74,75,76,77,78,79,80]
  }

  row_hash.each do |key_row_symbol, value_array_indices|
    value_array_indices.each do |i|
      if index == i
        return value_array_indices
      end
    end
  end
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
