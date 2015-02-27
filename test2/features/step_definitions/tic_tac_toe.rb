Given(/^a board like this:$/) do |table|
  # table is a Cucumber::Ast::Table
  @board = table.raw
end

When(/^player x play in row (\d+),column (\d+)$/) do |row, column|
  row, column = row.to_i, column.to_i
  @board[row][column] = 'x'
end

Then(/^the board should look this:$/) do |table|
  table.diff! @board
  #expect(@table).not_to eql(@board)
end
