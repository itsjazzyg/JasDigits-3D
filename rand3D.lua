math.randomseed(os.time())

function randNum(level)
  numlist = {}
  w = {}
  w[0] = 0
  sumw = 0

  for i = 1,level do
    numlist[i] = 2^i
    w[i] = 1/numlist[i]
    sumw = sumw + w[i]
  end

  for i = 1,level do
    w[i] = w[i]/sumw + w[i-1]
  end

  rand = math.random()

  for i = 1,level do
    if rand <= w[i] then return numlist[i] end
  end

end
