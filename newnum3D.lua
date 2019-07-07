function newNum(max)
  level = math.log(max)/math.log(2)
  level = math.max(1,level-2)

  return randNum(level)
end

function newNumRC(rc,newNum)
  count = 0

  for i = 1,9 do
    if rc[i] == 0 then count = count + 1 end
  end

  seq = math.random(1,count)
  seqnum = 0

  loop = true
  i = 1

  while loop do
  if rc[i] == 0 then seqnum = seqnum+1 end
  if seqnum == seq then
    rc[i] = newNum
    loop = false
  end
  i = i+1
  end

  return rc
end

function newNumCalc(m,mset,newNum)
  rc = {}
  rcs = 1

  for _,i in ipairs(mset) do
    rc[rcs] = m[i]
    rcs = rcs+1
  end

  rc = newNumRC(rc,newNum)

  rcs = 1

  for _,i in ipairs(mset) do
    m[i] = rc[rcs]
    rcs = rcs+1
  end

  return m
end

function newNumUp(t,newNum)
  m = tableElementDuplicate(t)
  mset = {6,7,8,15,16,17,24,25,26}
  return newNumCalc(m,mset,newNum)
end

function newNumDown(t,newNum)
  m = tableElementDuplicate(t)
  mset = {0,1,2,9,10,11,18,19,20}
  return newNumCalc(m,mset,newNum)
end

function newNumLeft(t,newNum)
  m = tableElementDuplicate(t)
  mset = {}
  for i = 1,9 do mset[i] = 2+(i-1)*3 end
  return newNumCalc(m,mset,newNum)
end

function newNumRight(t,newNum)
  m = tableElementDuplicate(t)
  mset = {}
  for i = 1,9 do mset[i] = (i-1)*3 end
  return newNumCalc(m,mset,newNum)
end

function newNumForward(t,newNum)
  m = tableElementDuplicate(t)
  mset = {}
  for i = 1,9 do mset[i] = i+17 end
  return newNumCalc(m,mset,newNum)
end

function newNumBackward(t,newNum)
  m = tableElementDuplicate(t)
  mset = {}
  for i = 1,9 do mset[i] = i-1 end
  return newNumCalc(m,mset,newNum)
end
