function update (elapsed)
   local currentBeat = (songPos / 1000)*(bpm/60)
   if moveslight then
     for i=0,7 do
       setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0) * math.pi), i)
     end
   end
   if shake then
      for i=0,7 do
			setHudPosition(5 * math.sin((currentBeat * 3 + i*0.1) * math.pi), 5 * math.cos((currentBeat * 3 + i*0.1) * math.pi))
			setCamPosition(-5 * math.sin((currentBeat * 3 + i*0.1) * math.pi), -5 * math.cos((currentBeat * 3 + i*0.1) * math.pi))
	  end
   end
end

function stepHit (step)
    if curStep == 704 then
    moveslight = true
    end
    if curStep == 832 then
    shake = true
    end
    if curStep == 959 then
    shake = false
    moveslight = false
      for i=0,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'], 0, 0.6, 'setDefault')
			tweenPosYAngle(i, _G['defaultStrum'..i..'Y'], 0, 0.6, 'setDefault')
      end
    setHudPosition(0,0)
    setCamPosition(0,0)
    end
end