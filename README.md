# Sudoku

Sudoku solver algorithm as developed by Hanah Yendler, Linsdey Stevenson, Reuben Brandt, and Monique Williams at DevBootcamp.

Initially a console only solver, it has been updated to include a visual demonstration of the solving process.

Basic algorithm works with the following logic:

Gathering all possibilities:
  - Finds an empty cell
  - Gathers all the existing numbers in the cell's row, column, and box
  - Checks the existing numbers for matches between 1 - 9; if any numbers don't exist, those get pushed into a possibilities hash relating to that particular cell
  - Move on to the next empty cell

Sorting through possibilities hash
  - If any of the possibilities for a cell only have one possibility, then the cell is solved and input that value into the board
  - Run the gathering of all possibilities again, and then sort again until there are no possibilities left


