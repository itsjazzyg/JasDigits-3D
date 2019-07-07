function load()
  table = {}
  table[0] = {}

  for i = 0,26 do table[0][i] = 0 end

  while countBlank(table[0]) >= 25 do
    table[0][math.random(0,26)] = 2
  end

  r(table[0])

  main()
end

function main()
  game = true
  moveCount = 0

  while game do
    moveCount = prompt(table,moveCount)
    r(table[moveCount])

    if gameOver(table[moveCount]) then
      noMoreMoves()
      game = false
    end
  end
end
