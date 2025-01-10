-- Script made by RealReal
-- uhhhh I made it before Catbrother so it's mine right?
-- https://www.youtube.com/channel/UCBiEI00nFRfvR8it0z8zmzw

	
	
	
	
	
-- These Comment is made for Helping People to understand the code
-- Put this in new Created Folder in mods/ur mod folder/new created folder

local singing = 0

function onCreate()

addLuaScript('custom_notetypes/Neo Sky_Sing') -- Load the Note Type

-- CUSTOM SPRITE
makeAnimatedLuaSprite('Neo Sky', 'characters/neo sky', 0, 0)

		addAnimationByPrefix('Neo Sky', 'idle', 'sky annoyed idle', 24, false) 
		
        addAnimationByPrefix('Neo Sky', 'singLEFT', 'sky annoyed left', 24, false) 
		
		addAnimationByPrefix('Neo Sky', 'singDOWN', 'sky annoyed down', 24, false) 
		
		addAnimationByPrefix('Neo Sky', 'singUP', 'sky annoyed up', 24, false) 
		
		addAnimationByPrefix('Neo Sky', 'singRIGHT', 'sky annoyed right', 24, false) 

		addAnimationByPrefix('Neo Sky', 'singLEFT-alt', 'sky annoyed alt left', 24, false)
		
		addAnimationByPrefix('Neo Sky', 'singDOWN-alt', 'sky annoyed alt down', 24, false) 

		addAnimationByPrefix('Neo Sky', 'singUP-alt', 'sky annoyed alt up', 24, false) 

		addAnimationByPrefix('Neo Sky', 'singRIGHT-alt', 'sky annoyed alt right', 24, false)
		
		-- you can add more animation if ur character xml has more animation
		-- addAnimationByPrefix('Neo Sky', 'singRIGHT', 'your character right Pose animation', 24, false) 
		
		addLuaSprite('Neo Sky', true)
		
	
end

function onStepHit() -- Idle Function
    -- Make Bopping Idle Match the Dad and Boyfriend
    if getProperty('Neo Sky.animation.curAnim.name')  ~= null and curBeat % 2 == 0 and singing ~= 1 then -- avoiding Glitchy animation like Kade Engine LMAO
        objectPlayAnimation('Neo Sky','idle');	
    end
		
    -- Change curBeat % 2 to 1 for Bopping Every Beat
	
end

function onUpdate(elapsed) -- Avoid Playing Idle While Playing Animation

	-- WILL NOT DO IDLE IF PLAYING ANIMATION		
	if getProperty('Neo Sky.animation.curAnim.name') ~= 'idle' and not getProperty('Neo Sky.animation.curAnim.finished') then
	singing = 1
	else
	singing = 0
	
	end

end

function onUpdatePost(elapsed) -- This is the Offset Function 

            if getProperty('Neo Sky.animation.curAnim.name') == 'idle' then
                setProperty('Neo Sky.offset.x',0)
				setProperty('Neo Sky.offset.y',0)
                
			
			elseif getProperty('Neo Sky.animation.curAnim.name') == 'singLEFT' then
                setProperty('Neo Sky.offset.x',1)
				setProperty('Neo Sky.offset.y',1)
              
			
			elseif getProperty('Neo Sky.animation.curAnim.name') == 'singDOWN' then
                setProperty('Neo Sky.offset.x',9)
				setProperty('Neo Sky.offset.y',1)
               
			
			elseif getProperty('Neo Sky.animation.curAnim.name') == 'singUP' then
                setProperty('Neo Sky.offset.x',14)
				setProperty('Neo Sky.offset.y',0)
                
			
			elseif getProperty('Neo Sky.animation.curAnim.name') == 'singRIGHT' then
                setProperty('Neo Sky.offset.x',-1)
				setProperty('Neo Sky.offset.y',0)
			

			elseif getProperty('Neo Sky.animation.curAnim.name') == 'singLEFT-alt' then
                setProperty('Neo Sky.offset.x',0)
				setProperty('Neo Sky.offset.y',0)
              
			
			elseif getProperty('Neo Sky.animation.curAnim.name') == 'singDOWN-alt' then
                setProperty('Neo Sky.offset.x',10)
				setProperty('Neo Sky.offset.y',2)
               
			
			elseif getProperty('Neo Sky.animation.curAnim.name') == 'singUP-alt' then
                setProperty('Neo Sky.offset.x',21)
				setProperty('Neo Sky.offset.y',2)
                
			
			elseif getProperty('Neo Sky.animation.curAnim.name') == 'singRIGHT-alt' then
                setProperty('Neo Sky.offset.x',-1)
				setProperty('Neo Sky.offset.y',0)
				
				
		
            end

			
end

function opponentNoteHit(id, noteData, noteType, isSustainNote) -- I like making easy code so this is different from Catbrother everything code :D

if noteType == 'Neo Sky_Sing' and noteData == 0 then

	objectPlayAnimation('Neo Sky', 'singLEFT',true);

end

if noteType == 'Neo Sky_Sing' and noteData == 1 then

	objectPlayAnimation('Neo Sky', 'singDOWN',true);

end

if noteType == 'Neo Sky_Sing' and noteData == 2 then

	objectPlayAnimation('Neo Sky', 'singUP',true);

end

if noteType == 'Neo Sky_Sing' and noteData == 3 then

	objectPlayAnimation('Neo Sky', 'singRIGHT',true);

end

if noteType == 'Neo Sky_Sing' and noteData == 4 then

	objectPlayAnimation('Neo Sky', 'singLEFT',true);

end

if noteType == 'Neo Sky_Sing' and noteData == 5 then

	objectPlayAnimation('Neo Sky', 'singDOWN',true);

end

if noteType == 'Neo Sky_Sing' and noteData == 6 then

	objectPlayAnimation('Neo Sky', 'singUP',true);

end

if noteType == 'Neo Sky_Sing' and noteData == 7 then

	objectPlayAnimation('Neo Sky', 'singRIGHT',true);

end

if noteType == 'Neo Sky_Sing' and noteData == 8 then

	objectPlayAnimation('Neo Sky', 'singLEFT',true);

end

if noteType == 'Neo Sky_Sing' and noteData == 9 then

	objectPlayAnimation('Neo Sky', 'singDOWN',true);

end

if noteType == 'Neo Sky_Sing' and noteData == 10 then

	objectPlayAnimation('Neo Sky', 'singUP',true);

end

if noteType == 'Neo Sky_Sing' and noteData == 11 then

	objectPlayAnimation('Neo Sky', 'singRIGHT',true);

end

    if altAnim == true then
		if noteType == 'Neo Sky_Sing' and noteData == 0 then

			objectPlayAnimation('Neo Sky', 'singLEFT-alt',true);
		
		end
		
		if noteType == 'Neo Sky_Sing' and noteData == 1 then
		
			objectPlayAnimation('Neo Sky', 'singDOWN-alt',true);
		
		end
		
		if noteType == 'Neo Sky_Sing' and noteData == 2 then
		
			objectPlayAnimation('Neo Sky', 'singUP-alt',true);
		
		end
		
		if noteType == 'Neo Sky_Sing' and noteData == 3 then
		
			objectPlayAnimation('Neo Sky', 'singRIGHT-alt',true);
		
		end

		if noteType == 'Neo Sky_Sing' and noteData == 4 then

			objectPlayAnimation('Neo Sky', 'singLEFT-alt',true);
		
		end
		
		if noteType == 'Neo Sky_Sing' and noteData == 5 then
		
			objectPlayAnimation('Neo Sky', 'singDOWN-alt',true);
		
		end
		
		if noteType == 'Neo Sky_Sing' and noteData == 6 then
		
			objectPlayAnimation('Neo Sky', 'singUP-alt',true);
		
		end
		
		if noteType == 'Neo Sky_Sing' and noteData == 7 then
		
			objectPlayAnimation('Neo Sky', 'singRIGHT-alt',true);
		
		end

		if noteType == 'Neo Sky_Sing' and noteData == 8 then

			objectPlayAnimation('Neo Sky', 'singLEFT-alt',true);
		
		end
		
		if noteType == 'Neo Sky_Sing' and noteData == 9 then
		
			objectPlayAnimation('Neo Sky', 'singDOWN-alt',true);
		
		end
		
		if noteType == 'Neo Sky_Sing' and noteData == 10 then
		
			objectPlayAnimation('Neo Sky', 'singUP-alt',true);
		
		end
		
		if noteType == 'Neo Sky_Sing' and noteData == 11 then
		
			objectPlayAnimation('Neo Sky', 'singRIGHT-alt',true);
		
		end
		
		if noteType == '2,3_Sing' and noteData == 3 then
		
			objectPlayAnimation('Neo Sky', 'singRIGHT-alt',true);
		
		end
		
		if noteType == '2,4_Sing' and noteData == 3 then
		
			objectPlayAnimation('Neo Sky', 'singRIGHT-alt',true);
		
		end

		if noteType == '1,2,4,5_Sing' and noteData == 4 then
		
			objectPlayAnimation('Neo Sky', 'singLEFT-alt',true);
		
		end

    end

end




function noteMiss(id, noteData, noteType, isSustainNote) -- You can add Miss animation if The Character is on BF side
	
end


