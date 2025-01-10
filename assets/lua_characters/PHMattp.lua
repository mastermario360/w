-- Script made by RealReal
-- uhhhh I made it before Catbrother so it's mine right?
-- https://www.youtube.com/channel/UCBiEI00nFRfvR8it0z8zmzw

	
	
	
	
	
-- These Comment is made for Helping People to understand the code
-- Put this in new Created Folder in mods/ur mod folder/new created folder

local singing = 0

function onCreate()

addLuaScript('custom_notetypes/PHMattp_Sing') -- Load the Note Type

-- CUSTOM SPRITE
makeAnimatedLuaSprite('PHMattp', 'characters/PHMatt', 0, 0)

		addAnimationByPrefix('PHMattp', 'idle', 'matt idle', 24, true) 
		
        addAnimationByPrefix('PHMattp', 'singLEFT', 'matt left note', 24, false) 
		
		addAnimationByPrefix('PHMattp', 'singDOWN', 'matt down note', 24, false) 
		
		addAnimationByPrefix('PHMattp', 'singUP', 'matt up note', 24, false) 
		
		addAnimationByPrefix('PHMattp', 'singRIGHT', 'matt right note', 24, false) 
		
		-- you can add more animation if ur character xml has more animation
		-- addAnimationByPrefix('PHMattp', 'singRIGHT', 'your character right Pose animation', 24, false) 
		
		addLuaSprite('PHMattp', true)
		setProperty ("PHMattp.flipX", true)
		
	
end

function onStepHit() -- Idle Function
    -- Make Bopping Idle Match the Dad and Boyfriend
    if getProperty('PHMattp.animation.curAnim.name')  ~= null and curBeat % 2 == 0 and singing ~= 1 then -- avoiding Glitchy animation like Kade Engine LMAO
        objectPlayAnimation('PHMattp','idle');	
    end
		
    -- Change curBeat % 2 to 1 for Bopping Every Beat
	
end

function onUpdate(elapsed) -- Avoid Playing Idle While Playing Animation

	-- WILL NOT DO IDLE IF PLAYING ANIMATION		
	if getProperty('PHMattp.animation.curAnim.name') ~= 'idle' and not getProperty('PHMattp.animation.curAnim.finished') then
	singing = 1
	else
	singing = 0
	
	end

end

function onUpdatePost(elapsed) -- This is the Offset Function 

            if getProperty('PHMattp.animation.curAnim.name') == 'idle' then
                setProperty('PHMattp.offset.x',-32)
				setProperty('PHMattp.offset.y',-247)
                
			
			elseif getProperty('PHMattp.animation.curAnim.name') == 'singLEFT' then
                setProperty('PHMattp.offset.x',-27)
				setProperty('PHMattp.offset.y',-283)
              
			
			elseif getProperty('PHMattp.animation.curAnim.name') == 'singUP' then
                setProperty('PHMattp.offset.x',-41)
				setProperty('PHMattp.offset.y',-225)
               
			
			elseif getProperty('PHMattp.animation.curAnim.name') == 'singDOWN' then
                setProperty('PHMattp.offset.x',-36)
				setProperty('PHMattp.offset.y',-274)
                
			
			elseif getProperty('PHMattp.animation.curAnim.name') == 'singRIGHT' then
                setProperty('PHMattp.offset.x',-13)
				setProperty('PHMattp.offset.y',-263)
				
				
		
            end

			
end

function goodNoteHit(id, noteData, noteType, isSustainNote) -- I like making easy code so this is different from Catbrother everything code :D

if noteType == 'PHMattp_Sing' and noteData == 0 then

	objectPlayAnimation('PHMattp', 'singLEFT',true);

end

if noteType == 'PHMattp_Sing' and noteData == 1 then

	objectPlayAnimation('PHMattp', 'singDOWN',true);

end

if noteType == 'PHMattp_Sing' and noteData == 2 then

	objectPlayAnimation('PHMattp', 'singUP',true);

end

if noteType == 'PHMattp_Sing' and noteData == 3 then

	objectPlayAnimation('PHMattp', 'singRIGHT',true);

end

if noteType == 'PHMattp_Sing' and noteData == 4 then

	objectPlayAnimation('PHMattp', 'singLEFT',true);

end

if noteType == 'PHMattp_Sing' and noteData == 5 then

	objectPlayAnimation('PHMattp', 'singDOWN',true);

end

if noteType == 'PHMattp_Sing' and noteData == 6 then

	objectPlayAnimation('PHMattp', 'singUP',true);

end

if noteType == 'PHMattp_Sing' and noteData == 7 then

	objectPlayAnimation('PHMattp', 'singRIGHT',true);

end

if noteType == 'PHMattp_Sing' and noteData == 8 then

	objectPlayAnimation('PHMattp', 'singLEFT',true);

end

if noteType == 'PHMattp_Sing' and noteData == 9 then

	objectPlayAnimation('PHMattp', 'singDOWN',true);

end

if noteType == 'PHMattp_Sing' and noteData == 10 then

	objectPlayAnimation('PHMattp', 'singUP',true);

end

if noteType == 'PHMattp_Sing' and noteData == 11 then

	objectPlayAnimation('PHMattp', 'singRIGHT',true);

end

end




function noteMiss(id, noteData, noteType, isSustainNote) -- You can add Miss animation if The Character is on BF side 

end


