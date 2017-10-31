# code your #valid_move? method here
def valid_move?(board, position)
  move=position.to_i
  test = move - 1
  if test.between?(0,8) && (position_taken?(board, test))
  true
else
  false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  else board[position] == "X" or "O"
    true
  end
end
