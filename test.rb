board_test = "1-58-2----9--764-52--4--819-19--73-6762-83-9-----61-5---76---3-43--2-5-16--3-89--"

board_test_array = ["1", "-", "5", "8", "-", "2", "-", "-", "-", "-", "9", "-", "-", "7", "6", "4", "-", "5", "2", "-", "-", "4", "-", "-", "8", "1", "9", "-", "1", "9", "-", "-", "7", "3", "-", "6", "7", "6", "2", "-", "8", "3", "-", "9", "-", "-", "-", "-", "-", "6", "1", "-", "5", "-", "-", "-", "7", "6", "-", "-", "-", "3", "-", "4", "3", "-", "-", "2", "-", "5", "-", "1", "6", "-", "-", "3", "-", "8", "9", "-", "-"]


# this method takes the board as a string, converts it to an array
# if a cell is empty it calls the cell_possibilities method
# returns a solved board as an array
def solve(board)
  board_array = board.split(//)
  board_array.each_with_index do |cell, index|
    if cell == "-"
      cell_possibilities(index, board_array)
    end
  end
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

    #then use those indices to get the values and put into an array
    #then .include? and push the ones that don't exist into another array
  # return said array
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


#driver code
 p cell_location(1, board_test_array)
 p cell_possibilities(1, board_test_array)
