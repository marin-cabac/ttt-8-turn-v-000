

  def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input=user_input.to_i-1
end

def valid_move?(board, index)
 !position_taken?(board, index) && (0..8)===index

end

def position_taken?(board, index) #this is a helper method for the position_taken meth above
  if board[index] =="" ||board[index] ==" " || board[index] ==nil
    return false
  else
    return true
end
end

def move(board,index,value="X")

  board[index]=value
end

def turn(board)
  puts "Please enter 1-9:"
  input=input_to_index(gets.strip)

if !(valid_move?(board, input))
turn(board)
else
   move(board,input,value="X")
   display_board(board)
end

end
