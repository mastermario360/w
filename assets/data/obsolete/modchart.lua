local lockhealth = false

function update (elapsed)
    if lockhealth then
      setHealth(0.01)
    end
end

function stepHit (step)
   if curStep == 640 then
     lockhealth = true
     showOnlyStrums = false
   end
   if curStep == 64 then
   showOnlyStrums = true
   setHudZoom(1.25)
   setCamZoom(1.25)
   end
   if curStep == 670 then
     lockhealth = false
     setHealth(0.01)
   end
   if curStep == 704 then
     lockhealth = true
   end
   if curStep == 734 then
     lockhealth = false
     setHealth(0.01)
   end
   if curStep == 768 then
     showOnlyStrums = true
     setHudZoom(1.25)
     setCamZoom(1.25)
   end
   if curStep == 1023 then
   showOnlyStrums = false
   setHudZoom(1.25)
   setCamZoom(1.25)
   end
end