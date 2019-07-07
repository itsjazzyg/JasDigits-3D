function top()
  io.write("Welcome to JasDigits 3D!\n")
  io.write("Version ")
  io.write(version)
  io.write("\n\n")
end

function r(m)
  os.execute("clear")
  top()
  io.write("Score:")
  io.write(calcScore(m))
  io.write("\n")
  p(m)
end

function prompt(table,moveCount)
  loop = true

  io.write("W for up, S for down, A for left, D for right, Q for forward, E for backward\n")

  while loop do

    io.write(">")
    c = io.read()


    if c == "W" or c == "w" then
      table[moveCount+1] = moveUp(table[moveCount])

      if tableCompareSame(table[moveCount],table[moveCount+1]) then
        io.write("Invalid move\n")
      else
        table[moveCount+1] = newNumUp(table[moveCount+1],newNum(checkMax(table[moveCount+1])))
        loop = false
      end
    elseif c == "S" or c == "s" then
      table[moveCount+1] = moveDown(table[moveCount])

      if tableCompareSame(table[moveCount],table[moveCount+1]) then
        io.write("Invalid move\n")
      else
        table[moveCount+1] = newNumDown(table[moveCount+1],newNum(checkMax(table[moveCount+1])))
        loop = false
      end
    elseif c == "A" or c == "a" then
      table[moveCount+1] = moveLeft(table[moveCount])

      if tableCompareSame(table[moveCount],table[moveCount+1]) then
        io.write("Invalid move\n")
      else
        table[moveCount+1] = newNumLeft(table[moveCount+1],newNum(checkMax(table[moveCount+1])))
        loop = false
      end
    elseif c == "D" or c == "d" then
      table[moveCount+1] = moveRight(table[moveCount])

      if tableCompareSame(table[moveCount],table[moveCount+1]) then
        io.write("Invalid move\n")
      else
        table[moveCount+1] = newNumRight(table[moveCount+1],newNum(checkMax(table[moveCount+1])))
        loop = false
      end
    elseif c == "Q" or c == "q" then
      table[moveCount+1] = moveForward(table[moveCount])

      if tableCompareSame(table[moveCount],table[moveCount+1]) then
        io.write("Invalid move\n")
      else
        table[moveCount+1] = newNumForward(table[moveCount+1],newNum(checkMax(table[moveCount+1])))
        loop = false
      end
    elseif c == "E" or c == "e" then
      table[moveCount+1] = moveBackward(table[moveCount])

      if tableCompareSame(table[moveCount],table[moveCount+1]) then
        io.write("Invalid move\n")
      else
        table[moveCount+1] = newNumBackward(table[moveCount+1],newNum(checkMax(table[moveCount+1])))
        loop = false
      end
    elseif c == "U" or c == "u" then
      return math.max(moveCount-1,0)
    elseif c == "N" or c == "n" then
      load()
    else
      io.write("Invalid response\n")
    end
  end

  return moveCount+1
end

function noMoreMoves()
  io.write("\nNo more moves!\n")
  io.write("Your score is ")
  io.write(calcScore(m))
  io.write("!\n")
  io.write("Press return for new game!")

  io.read()

  load()
end
