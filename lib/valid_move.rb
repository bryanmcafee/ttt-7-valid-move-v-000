# code your #valid_move? method here
def valid_move?(board, position)
  move=position.to_i
  test = move - 1
  test.between?(0,8) == position_taken?(board)
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  return false if [" ", ""].include?(board[position])
  return true if ["X", "O"].include?(board[position])
end
