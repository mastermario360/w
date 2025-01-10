local healthlocked = true

function update (elapsed)
   if healthlocked then
     setHealth(1)
   end
end

function stepHit (step)
    if curStep == 129 then
    healthlocked = false
    end
end