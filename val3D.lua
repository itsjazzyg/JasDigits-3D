function countBlank(m)
  b = 0
  for i = 0,26 do
    if m[i] == 0 then b = b+1 end
  end
  return b
end

function checkMax(m)
  max = 0
  for i = 0,26 do
    if m[i] > max then max = m[i] end
  end
  return max
end

function calcScore(m)
  score = 0

  for i = 0,26 do
    score = score + m[i]
  end

  return score*10
end

function gameOver(m)
  if tableCompareSame(m,moveUp(m))
    and tableCompareSame(m,moveDown(m))
    and tableCompareSame(m,moveLeft(m))
    and tableCompareSame(m,moveRight(m))
    and tableCompareSame(m,moveForward(m))
    and tableCompareSame(m,moveBackward(m)) then return true
  end

  return false
end
