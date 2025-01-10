local kindamove = false
local resetti = false
local slowswayer = false

local hudrotate = false
local hudrotatecalm = false
local windowfunction = false
local shook = false
local windowfunctionup = false

function start (song)
   setWindowPos(0, 30)
   resizeWindow(getScreenWidth(), getScreenHeight())
end

function update (elapsed)
local currentBeat = (songPos / 1000)*(bpm/60)
   if windowfunction then
     setWindowPos(64 * math.sin(currentBeat * math.pi) + 60, 30)
   end
   if windowfunctionup then
     setWindowPos(64 * math.sin(currentBeat * math.pi) + 60, 32 * math.sin(currentBeat * 5) + 30)
   end
   if kindamove then
     for i=0,7 do
       setActorX(_G['defaultStrum'..i..'X'] + 9 * math.sin((currentBeat + i*0.25) * 9), i)
	   setActorY(_G['defaultStrum'..i..'Y'] + 9 * math.cos((currentBeat + i*0.25) * 9), i)
     end
   end
   if shook then
      for i=0,7 do
		setHudPosition(8 * math.sin((currentBeat * 3 + i*0.1) * math.pi), 8 * math.cos((currentBeat * 3 + i*0.1) * math.pi))
		setCamPosition(-8 * math.sin((currentBeat * 3 + i*0.1) * math.pi), -8 * math.cos((currentBeat * 3 + i*0.1) * math.pi))
	  end
   end
   if resetti then
		for i=0,7 do
			tweenPosXAngle(i, _G['defaultStrum'..i..'X'], 0, 0.6, 'setDefault')
			tweenPosYAngle(i, _G['defaultStrum'..i..'Y'], 0, 0.6, 'setDefault')
		end
	end
	if hudrotate then
	camHudAngle = 5 * math.cos((currentBeat) * 1)
	cameraAngle = -5 * math.cos((currentBeat) * 1)
	end
	if hudrotatecalm then
	camHudAngle = 4 * math.cos((currentBeat) * 0.5)
	cameraAngle = -4 * math.cos((currentBeat) * 0.5)
	end
	if slowswayer then
		for i=0,3 do
			setActorX(_G['defaultStrum'..i..'X'] + 300 * math.sin((currentBeat + i*0) * 1.75) + 350, i)
		end
		for i=4,7 do
			setActorX(_G['defaultStrum'..i..'X'] - 300 * math.sin((currentBeat + i*0) * 1.75) - 275, i)
		end
	end
end

function stepHit (step)
   if curStep == 204 then
   setHudZoom(1)
   windowfunction = true
   showOnlyStrums = true
   setCamZoom(1)
   end
   if curStep == 366 then
   windowfunction = false
   kindamove = true
   setWindowPos(130, 105)
   resizeWindow(getScreenWidth() - 200, getScreenHeight() - 200)
   end
   if curStep == 449 then
   shook = true
   end
   if curStep == 530 then
   resizeWindow(getScreenWidth(), getScreenHeight())
   shook = false
   windowfunction = true
   kindamove = false
   setWindowPos(0, -30)
   setCamPosition(0,0)
   setHudPosition(0,0)
   resetti = true
   end
   if curStep == 540 then
   resetti = false
   end
   if curStep == 694 then
   hudrotate = true
   end
   if curStep == 856 then
   hudrotatecalm = true
   hudrotate = false
   windowfunction = false
   resizeWindow(getScreenWidth() - 200, getScreenHeight() - 200)
   setWindowPos(130, 105)
   end
   if curStep == 1020 then
   setHudPosition(0,0)
   setCamPosition(0,0)
   hudrotatecalm = false
   slowswayer = true
   resizeWindow(getScreenWidth(), getScreenHeight())
   setWindowPos(0, -30)
   end
   if curStep == 1366 then
   slowswayer = false
   setWindowPos(0, -30)
   windowfunctionup = false
   setHudPosition(0,0)
   setCamPosition(0,0)
   camHudAngle = camHudAngle + 1
   cameraAngle = cameraAngle - 1
   resetti = true
   setHudZoom(1)
   showOnlyStrums = false
   end
   if curStep == 1386 then
   resetti = false
   end
   if curStep == 1183 then
   windowfunctionup = true
   end
end