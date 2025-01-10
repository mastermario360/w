-- Script made by RealReal
-- uhhhh I made it before Catbrother so it's mine right?
-- https://www.youtube.com/channel/UCBiEI00nFRfvR8it0z8zmzw

	
	
	
	
	
-- These Comment is made for Helping People to understand the code
-- Put this in new Created Folder in mods/ur mod folder/new created folder

local singing = 0

function onCreate()

addLuaScript('custom_notetypes/spurkmatts_Sing') -- Load the Note Type

-- CUSTOM SPRITE
makeAnimatedLuaSprite('spurkmatts', 'characters/spurkmatt', 0, 0)

		addAnimationByPrefix('spurkmatts', 'idle', 'matt idle', 24, true) 
		
        addAnimationByPrefix('spurkmatts', 'singLEFT', 'matt left note', 24, false) 
		
		addAnimationByPrefix('spurkmatts', 'singDOWN', 'matt down note', 24, false) 
		
		addAnimationByPrefix('spurkmatts', 'singUP', 'matt up note', 24, false) 
		
		addAnimationByPrefix('spurkmatts', 'singRIGHT', 'matt right note', 24, false) 
		
		-- you can add more animation if ur character xml has more animation
		-- addAnimationByPrefix('spurkmatts', 'singRIGHT', 'your character right Pose animation', 24, false) 
		
		addLuaSprite('spurkmatts', true)
		setProperty ("spurkmatts.flipX", true)
		
	
end

function onStepHit() -- Idle Function
    -- Make Bopping Idle Match the Dad and Boyfriend
    if getProperty('spurkmatts.animation.curAnim.name')  ~= null and curBeat % 2 == 0 and singing ~= 1 then -- avoiding Glitchy animation like Kade Engine LMAO
        objectPlayAnimation('spurkmatts','idle');	
    end
		
    -- Change curBeat % 2 to 1 for Bopping Every Beat
	
end

function onUpdate(elapsed) -- Avoid Playing Idle While Playing Animation

	-- WILL NOT DO IDLE IF PLAYING ANIMATION		
	if getProperty('spurkmatts.animation.curAnim.name') ~= 'idle' and not getProperty('spurkmatts.animation.curAnim.finished') then
	singing = 1
	else
	singing = 0
	
	end

end

function onUpdatePost(elapsed) -- This is the Offset Function 

            if getProperty('spurkmatts.animation.curAnim.name') == 'idle' then
                setProperty('spurkmatts.offset.x',-32)
				setProperty('spurkmatts.offset.y',-247)
                
			
			elseif getProperty('spurkmatts.animation.curAnim.name') == 'singLEFT' then
                setProperty('spurkmatts.offset.x',-27)
				setProperty('spurkmatts.offset.y',-283)
              
			
			elseif getProperty('spurkmatts.animation.curAnim.name') == 'singUP' then
                setProperty('spurkmatts.offset.x',-41)
				setProperty('spurkmatts.offset.y',-225)
               
			
			elseif getProperty('spurkmatts.animation.curAnim.name') == 'singDOWN' then
                setProperty('spurkmatts.offset.x',-36)
				setProperty('spurkmatts.offset.y',-274)
                
			
			elseif getProperty('spurkmatts.animation.curAnim.name') == 'singRIGHT' then
                setProperty('spurkmatts.offset.x',-13)
				setProperty('spurkmatts.offset.y',-263)
				
				
		
            end

			
end

function goodNoteHit(id, noteData, noteType, isSustainNote) -- I like making easy code so this is different from Catbrother everything code :D

if noteType == 'spurkmatts_Sing' and noteData == 0 then

	objectPlayAnimation('spurkmatts', 'singLEFT',true);

end

if noteType == 'spurkmatts_Sing' and noteData == 1 then

	objectPlayAnimation('spurkmatts', 'singDOWN',true);

end

if noteType == 'spurkmatts_Sing' and noteData == 2 then

	objectPlayAnimation('spurkmatts', 'singUP',true);

end

if noteType == 'spurkmatts_Sing' and noteData == 3 then

	objectPlayAnimation('spurkmatts', 'singRIGHT',true);

end

if noteType == 'spurkmatts_Sing' and noteData == 4 then

	objectPlayAnimation('spurkmatts', 'singLEFT',true);

end

if noteType == 'spurkmatts_Sing' and noteData == 5 then

	objectPlayAnimation('spurkmatts', 'singDOWN',true);

end

if noteType == 'spurkmatts_Sing' and noteData == 6 then

	objectPlayAnimation('spurkmatts', 'singUP',true);

end

if noteType == 'spurkmatts_Sing' and noteData == 7 then

	objectPlayAnimation('spurkmatts', 'singRIGHT',true);

end

if noteType == 'spurkmatts_Sing' and noteData == 8 then

	objectPlayAnimation('spurkmatts', 'singLEFT',true);

end

if noteType == 'spurkmatts_Sing' and noteData == 9 then

	objectPlayAnimation('spurkmatts', 'singDOWN',true);

end

if noteType == 'spurkmatts_Sing' and noteData == 10 then

	objectPlayAnimation('spurkmatts', 'singUP',true);

end

if noteType == 'spurkmatts_Sing' and noteData == 11 then

	objectPlayAnimation('spurkmatts', 'singRIGHT',true);

end

end




function noteMiss(id, noteData, noteType, isSustainNote) -- You can add Miss animation if The Character is on BF side 

end


