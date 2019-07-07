function p(m)
  io.write("┏━━━┳━━━┳━━━┓   ┏━━━┳━━━┳━━━┓   ┏━━━┳━━━┳━━━┓\n┃")
  rowWrite3D(m,0)

  io.write("┣━━━╋━━━╋━━━┫   ┣━━━╋━━━╋━━━┫   ┣━━━╋━━━╋━━━┫\n┃")
  rowWrite3D(m,3)

  io.write("┣━━━╋━━━╋━━━┫   ┣━━━╋━━━╋━━━┫   ┣━━━╋━━━╋━━━┫\n┃")
  rowWrite3D(m,6)

  io.write("┗━━━┻━━━┻━━━┛   ┗━━━┻━━━┻━━━┛   ┗━━━┻━━━┻━━━┛\n")
end

function rowWrite3D(m,startNum)
  for i = startNum,startNum+2 do
    writem(m[i])
    io.write("┃")
  end
  io.write("   ┃")
  for i = startNum+9,startNum+11 do
    writem(m[i])
    io.write("┃")
  end
  io.write("   ┃")
  for i = startNum+18,startNum+20 do
    writem(m[i])
    io.write("┃")
  end
  io.write("\n")
end

function writem(e)
  if e == 0 then io.write("   ")
  elseif e < 10 then p1(e)
  elseif e < 100 then p2(e)
  else p3(e)
  end
end

function p1(e)
  io.write(" ")
  io.write(e)
  io.write(" ")
end

function p2(e)
  io.write(" ")
  io.write(e)
end

function p3(e)
  io.write(e)
end
