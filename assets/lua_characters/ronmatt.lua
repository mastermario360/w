-- Script made by RealReal
-- uhhhh I made it before Catbrother so it's mine right?
-- https://www.youtube.com/channel/UCBiEI00nFRfvR8it0z8zmzw

	
	
	
	
	
-- These Comment is made for Helping People to understand the code
-- Put this in new Created Folder in mods/ur mod folder/new created folder

local singing = 0

function onCreate()

addLuaScript('custom_notetypes/ronmatt_Sing') -- Load the Note Type

-- CUSTOM SPRITE
makeAnimatedLuaSprite('ronmatt', 'characters/ronmatt', 0, 0)

		addAnimationByPrefix('ronmatt', 'idle', 'matt idle', 24, false) 
		
        addAnimationByPrefix('ronmatt', 'singLEFT', 'matt left note', 24, false) 
		
		addAnimationByPrefix('ronmatt', 'singDOWN', 'matt down note', 24, false) 
		
		addAnimationByPrefix('ronmatt', 'singUP', 'matt up note', 24, false) 
		
		addAnimationByPrefix('ronmatt', 'singRIGHT', 'matt right note', 24, false) 
		
		-- you can add more animation if ur character xml has more animation
		-- addAnimationByPrefix('ronmatt', 'singRIGHT', 'your character right Pose animation', 24, false) 
		
		addLuaSprite('ronmatt', true)
		
	
end

function onStepHit() -- Idle Function
    -- Make Bopping Idle Match the Dad and Boyfriend
    if getProperty('ronmatt.animation.curAnim.name')  ~= null and curBeat % 1 == 0 and singing ~= 1 then -- avoiding Glitchy animation like Kade Engine LMAO
        objectPlayAnimation('ronmatt','idle');	
    end
		
    -- Change curBeat % 2 to 1 for Bopping Every Beat
	
end

function onUpdate(elapsed) -- Avoid Playing Idle While Playing Animation

	-- WILL NOT DO IDLE IF PLAYING ANIMATION		
	if getProperty('ronmatt.animation.curAnim.name') ~= 'idle' and not getProperty('ronmatt.animation.curAnim.finished') then
	singing = 1
	else
	singing = 0
	
	end

end

function onUpdatePost(elapsed) -- This is the Offset Function 

            if getProperty('ronmatt.animation.curAnim.name') == 'idle' then
                setProperty('ronmatt.offset.x',-32)
				setProperty('ronmatt.offset.y',-247)
                
			
			elseif getProperty('ronmatt.animation.curAnim.name') == 'singLEFT' then
                setProperty('ronmatt.offset.x',-3)
				setProperty('ronmatt.offset.y',-283)
              
			
			elseif getProperty('ronmatt.animation.curAnim.name') == 'singUP' then
                setProperty('ronmatt.offset.x',-83)
				setProperty('ronmatt.offset.y',-225)
               
			
			elseif getProperty('ronmatt.animation.curAnim.name') == 'singDOWN' then
                setProperty('ronmatt.offset.x',-96)
				setProperty('ronmatt.offset.y',-274)
                
			
			elseif getProperty('ronmatt.animation.curAnim.name') == 'singRIGHT' then
                setProperty('ronmatt.offset.x',-38)
				setProperty('ronmatt.offset.y',-263)
				
				
		
            end

			
end

function opponentNoteHit(id, noteData, noteType, isSustainNote) -- I like making easy code so this is different from Catbrother everything code :D

if noteType == 'ronmatt_Sing' and noteData == 0 then

	objectPlayAnimation('ronmatt', 'singLEFT',true);

end

if noteType == 'ronmatt_Sing' and noteData == 1 then

	objectPlayAnimation('ronmatt', 'singDOWN',true);

end

if noteType == 'ronmatt_Sing' and noteData == 2 then

	objectPlayAnimation('ronmatt', 'singUP',true);

end

if noteType == 'ronmatt_Sing' and noteData == 3 then

	objectPlayAnimation('ronmatt', 'singRIGHT',true);

end

if noteType == 'ronmatt_Sing' and noteData == 4 then

	objectPlayAnimation('ronmatt', 'singLEFT',true);

end

if noteType == 'ronmatt_Sing' and noteData == 5 then

	objectPlayAnimation('ronmatt', 'singDOWN',true);

end

if noteType == 'ronmatt_Sing' and noteData == 6 then

	objectPlayAnimation('ronmatt', 'singUP',true);

end

if noteType == 'ronmatt_Sing' and noteData == 7 then

	objectPlayAnimation('ronmatt', 'singRIGHT',true);

end

if noteType == 'ronmatt_Sing' and noteData == 8 then

	objectPlayAnimation('ronmatt', 'singLEFT',true);

end

if noteType == 'ronmatt_Sing' and noteData == 9 then

	objectPlayAnimation('ronmatt', 'singDOWN',true);

end

if noteType == 'ronmatt_Sing' and noteData == 10 then

	objectPlayAnimation('ronmatt', 'singUP',true);

end

if noteType == 'ronmatt_Sing' and noteData == 11 then

	objectPlayAnimation('ronmatt', 'singRIGHT',true);

end

if noteType == 'BOMatt_Sing' and noteData == 0 then

	objectPlayAnimation('ronmatt', 'singLEFT',true);

end

if noteType == 'BOMatt_Sing' and noteData == 1 then

	objectPlayAnimation('ronmatt', 'singDOWN',true);

end

if noteType == 'BOMatt_Sing' and noteData == 2 then

	objectPlayAnimation('ronmatt', 'singUP',true);

end

if noteType == 'BOMatt_Sing' and noteData == 3 then

	objectPlayAnimation('ronmatt', 'singRIGHT',true);

end

if noteType == 'BOMatt_Sing' and noteData == 4 then

	objectPlayAnimation('ronmatt', 'singLEFT',true);

end

if noteType == 'BOMagtt_Sing' and noteData == 5 then

	objectPlayAnimation('ronmatt', 'singDOWN',true);

end

if noteType == 'BOMatt_Sing' and noteData == 6 then

	objectPlayAnimation('ronmatt', 'singUP',true);

end

if noteType == 'BOMatt_Sing' and noteData == 7 then

	objectPlayAnimation('ronmatt', 'singRIGHT',true);

end

if noteType == 'BOMatt_Sing' and noteData == 8 then

	objectPlayAnimation('ronmatt', 'singLEFT',true);

end

if noteType == 'BOMatt_Sing' and noteData == 9 then

	objectPlayAnimation('ronmatt', 'singDOWN',true);

end

if noteType == 'BOMatt_Sing' and noteData == 10 then

	objectPlayAnimation('ronmatt', 'singUP',true);

end

if noteType == 'BOMatt_Sing' and noteData == 11 then

	objectPlayAnimation('ronmatt', 'singRIGHT',true);

end

if noteType == 'BOSM2_Sing' and noteData == 0 then

	objectPlayAnimation('ronmatt', 'singLEFT',true);

end

if noteType == 'BOSM2_Sing' and noteData == 1 then

	objectPlayAnimation('ronmatt', 'singDOWN',true);

end

if noteType == 'BOSM2_Sing' and noteData == 2 then

	objectPlayAnimation('ronmatt', 'singUP',true);

end

if noteType == 'BOSM2_Sing' and noteData == 3 then

	objectPlayAnimation('ronmatt', 'singRIGHT',true);

end

if noteType == 'BOSM2_Sing' and noteData == 4 then

	objectPlayAnimation('ronmatt', 'singLEFT',true);

end

if noteType == 'BOSM2_Sing' and noteData == 5 then

	objectPlayAnimation('ronmatt', 'singDOWN',true);

end

if noteType == 'BOSM2_Sing' and noteData == 6 then

	objectPlayAnimation('ronmatt', 'singUP',true);

end

if noteType == 'BOSM2_Sing' and noteData == 7 then

	objectPlayAnimation('ronmatt', 'singRIGHT',true);

end

if noteType == 'BOSM2_Sing' and noteData == 8 then

	objectPlayAnimation('ronmatt', 'singLEFT',true);

end

if noteType == 'BOSM2_Sing' and noteData == 9 then

	objectPlayAnimation('ronmatt', 'singDOWN',true);

end

if noteType == 'BOSM2_Sing' and noteData == 10 then

	objectPlayAnimation('ronmatt', 'singUP',true);

end

if noteType == 'BOSM2_Sing' and noteData == 11 then

	objectPlayAnimation('ronmatt', 'singRIGHT',true);

end

if noteType == 'BOSMP_Sing' and noteData == 0 then

	objectPlayAnimation('ronmatt', 'singLEFT',true);

end

if noteType == 'BOSMP_Sing' and noteData == 1 then

	objectPlayAnimation('ronmatt', 'singDOWN',true);

end

if noteType == 'BOSMP_Sing' and noteData == 2 then

	objectPlayAnimation('ronmatt', 'singUP',true);

end

if noteType == 'BOSMP_Sing' and noteData == 3 then

	objectPlayAnimation('ronmatt', 'singRIGHT',true);

end

if noteType == 'BOSMP_Sing' and noteData == 4 then

	objectPlayAnimation('ronmatt', 'singLEFT',true);

end

if noteType == 'BOSMP_Sing' and noteData == 5 then

	objectPlayAnimation('ronmatt', 'singDOWN',true);

end

if noteType == 'BOSMP_Sing' and noteData == 6 then

	objectPlayAnimation('ronmatt', 'singUP',true);

end

if noteType == 'BOSMP_Sing' and noteData == 7 then

	objectPlayAnimation('ronmatt', 'singRIGHT',true);

end

if noteType == 'BOSMP_Sing' and noteData == 8 then

	objectPlayAnimation('ronmatt', 'singLEFT',true);

end

if noteType == 'BOSMP_Sing' and noteData == 9 then

	objectPlayAnimation('ronmatt', 'singDOWN',true);

end

if noteType == 'BOSMP_Sing' and noteData == 10 then

	objectPlayAnimation('ronmatt', 'singUP',true);

end

if noteType == 'BOSMP_Sing' and noteData == 11 then

	objectPlayAnimation('ronmatt', 'singRIGHT',true);

end

end




function noteMiss(id, noteData, noteType, isSustainNote) -- You can add Miss animation if The Character is on BF side 

end


