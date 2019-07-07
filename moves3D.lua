function moveUp(t)
  m = tableElementDuplicate(t)

  moveUpByLevel(m,0)
  moveUpByLevel(m,9)
  moveUpByLevel(m,18)
  return m
end

function moveUpByLevel(m,startNum)
  for i = startNum,startNum+5 do
    if m[i] == m[i+3] then
      m[i] = m[i]*2
      m[i+3] = 0
    elseif m[i] == 0 then
      m[i] = m[i+3]
      m[i+3] = 0
    end
  end
end

function moveDown(t)
  m = tableElementDuplicate(t)

  moveDownByLevel(m,8)
  moveDownByLevel(m,17)
  moveDownByLevel(m,26)
  return m
end

function moveDownByLevel(m,startNum)
  i = startNum
  while i >=startNum-5 do
    if m[i] == m[i-3] then
      m[i] = m[i]*2
      m[i-3] = 0
    elseif m[i] == 0 then
      m[i] = m[i-3]
      m[i-3] = 0
    end
    i = i-1
  end
end

function moveLeft(t)
  m = tableElementDuplicate(t)

  i = 0
  while i ~= 2 do
    if m[i] == m[i+1] then
      m[i] = m[i]*2
      m[i+1] = 0
    elseif m[i] == 0 then
      m[i] = m[i+1]
      m[i+1] = 0
    end
    i = i+3
    if i > 26 then i = i-26 end
  end
  return m
end

function moveRight(t)
  m = tableElementDuplicate(t)

  i = 26
  while i ~= 24 do
    if m[i] == m[i-1] then
      m[i] = m[i]*2
      m[i-1] = 0
    elseif m[i] == 0 then
      m[i] = m[i-1]
      m[i-1] = 0
    end
    i = i-3
    if i < 0 then i = i+26 end
  end
  return m
end

function moveForward(t)
  m = tableElementDuplicate(t)

  i = 0
  while i < 18 do
    if m[i] == m[i+9] then
      m[i] = m[i]*2
      m[i+9] = 0
    elseif m[i] == 0 then
      m[i] = m[i+9]
      m[i+9] = 0
    end
    i = i+1
  end
  return m
end

function moveBackward(t)
  m = tableElementDuplicate(t)

  i = 26
  while i > 8 do
    if m[i] == m[i-9] then
      m[i] = m[i]*2
      m[i-9] = 0
    elseif m[i] == 0 then
      m[i] = m[i-9]
      m[i-9] = 0
    end
    i = i-1
  end
  return m
end
