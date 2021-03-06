# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
#won?
def won?(board)
  WIN_COMBINATIONS.each {|combo|
    index_0 = combo[0]
    index_1 = combo[1]
    index_2 = combo[2]

    pos1 = board[index_0]
    pos2 = board[index_1]
    pos3 = board[index_2]

    if pos1 == "X" and pos2 == "X" and pos3 == "X"
      return combo
    elsif pos1 == "O" and pos2 == "O" and pos3 == "O"
      return combo
    end
  }
  return false
end
#full?
def full?(board)
  if !board.any?{|input|input == " " }
    return true
  else
    return false
  end
end
#draw?
def draw?(board)
  if !won?(board) and full?(board)
    return true
  else
    return false
  end
end
#over?
def over?(board)
  if won?(board) or full?(board) or draw?(board)
    return true
  else
    return false
  end
end
#winner?
def winner (board)
  index = won?(board)
  if index == false
    return nil
  else
    if board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end
