-- Script made by RealReal
-- uhhhh I made it before Catbrother so it's mine right?
-- https://www.youtube.com/channel/UCBiEI00nFRfvR8it0z8zmzw

	
	
	
	
	
-- These Comment is made for Helping People to understand the code
-- Put this in new Created Folder in mods/ur mod folder/new created folder

local singing = 0

function onCreate()

addLuaScript('custom_notetypes/NCShag_Sing') -- Load the Note Type

-- CUSTOM SPRITE
makeAnimatedLuaSprite('NCShag', 'characters/bside noncanon shag', 0, 0)

		addAnimationByPrefix('NCShag', 'idle', 'shaggy_idle', 24, false) 
		
        addAnimationByPrefix('NCShag', 'singLEFT', 'shaggy_left', 24, false) 
		
		addAnimationByPrefix('NCShag', 'singDOWN', 'shaggy_down', 24, false) 
		
		addAnimationByPrefix('NCShag', 'singUP', 'shaggy_up', 24, false) 
		
		addAnimationByPrefix('NCShag', 'singRIGHT', 'shaggy_right', 24, false) 
		
		-- you can add more animation if ur character xml has more animation
		-- addAnimationByPrefix('NCShag', 'singRIGHT', 'your character right Pose animation', 24, false) 
		
		addLuaSprite('NCShag', false)
		setProperty ("NCShag.flipX", true)
		
	
end

function onStepHit() -- Idle Function
    -- Make Bopping Idle Match the Dad and Boyfriend
    if getProperty('NCShag.animation.curAnim.name')  ~= null and curBeat % 1 == 0 and singing ~= 1 then -- avoiding Glitchy animation like Kade Engine LMAO
        objectPlayAnimation('NCShag','idle');	
    end
		
    -- Change curBeat % 2 to 1 for Bopping Every Beat
	
end

function onUpdate(elapsed) -- Avoid Playing Idle While Playing Animation

	-- WILL NOT DO IDLE IF PLAYING ANIMATION		
	if getProperty('NCShag.animation.curAnim.name') ~= 'idle' and not getProperty('NCShag.animation.curAnim.finished') then
	singing = 1
	else
	singing = 0
	
	end

end

function onUpdatePost(elapsed) -- This is the Offset Function 

            if getProperty('NCShag.animation.curAnim.name') == 'idle' then
                setProperty('NCShag.offset.x',0)
				setProperty('NCShag.offset.y',0)
                
			
			elseif getProperty('NCShag.animation.curAnim.name') == 'singLEFT' then
                setProperty('NCShag.offset.x',-65)
				setProperty('NCShag.offset.y',-121)
              
			
			elseif getProperty('NCShag.animation.curAnim.name') == 'singUP' then
                setProperty('NCShag.offset.x',-39)
				setProperty('NCShag.offset.y',26)
               
			
			elseif getProperty('NCShag.animation.curAnim.name') == 'singDOWN' then
                setProperty('NCShag.offset.x',86)
				setProperty('NCShag.offset.y',-160)
                
			
			elseif getProperty('NCShag.animation.curAnim.name') == 'singRIGHT' then
                setProperty('NCShag.offset.x',133)
				setProperty('NCShag.offset.y',-45)
				
				
		
            end

			
end

function goodNoteHit(id, noteData, noteType, isSustainNote) -- I like making easy code so this is different from Catbrother everything code :D

if noteType == 'NCShag_Sing' and noteData == 0 then

	objectPlayAnimation('NCShag', 'singLEFT',true);

end

if noteType == 'NCShag_Sing' and noteData == 1 then

	objectPlayAnimation('NCShag', 'singDOWN',true);

end

if noteType == 'NCShag_Sing' and noteData == 2 then

	objectPlayAnimation('NCShag', 'singUP',true);

end

if noteType == 'NCShag_Sing' and noteData == 3 then

	objectPlayAnimation('NCShag', 'singRIGHT',true);

end

if noteType == 'NCShag_Sing' and noteData == 4 then

	objectPlayAnimation('NCShag', 'singLEFT',true);

end

if noteType == 'NCShag_Sing' and noteData == 5 then

	objectPlayAnimation('NCShag', 'singDOWN',true);

end

if noteType == 'NCShag_Sing' and noteData == 6 then

	objectPlayAnimation('NCShag', 'singUP',true);

end

if noteType == 'NCShag_Sing' and noteData == 7 then

	objectPlayAnimation('NCShag', 'singRIGHT',true);

end

if noteType == 'NCShag_Sing' and noteData == 8 then

	objectPlayAnimation('NCShag', 'singLEFT',true);

end

if noteType == 'NCShag_Sing' and noteData == 9 then

	objectPlayAnimation('NCShag', 'singDOWN',true);

end

if noteType == 'NCShag_Sing' and noteData == 10 then

	objectPlayAnimation('NCShag', 'singUP',true);

end

if noteType == 'NCShag_Sing' and noteData == 11 then

	objectPlayAnimation('NCShag', 'singRIGHT',true);

end

if noteType == 'BOSM3_Sing' and noteData == 0 then

	objectPlayAnimation('NCShag', 'singLEFT',true);

end

if noteType == 'BOSM3_Sing' and noteData == 1 then

	objectPlayAnimation('NCShag', 'singDOWN',true);

end

if noteType == 'BOSM3_Sing' and noteData == 2 then

	objectPlayAnimation('NCShag', 'singUP',true);

end

if noteType == 'BOSM3_Sing' and noteData == 3 then

	objectPlayAnimation('NCShag', 'singRIGHT',true);

end

if noteType == 'BOSM3_Sing' and noteData == 4 then

	objectPlayAnimation('NCShag', 'singLEFT',true);

end

if noteType == 'BOSM3_Sing' and noteData == 5 then

	objectPlayAnimation('NCShag', 'singDOWN',true);

end

if noteType == 'BOSM3_Sing' and noteData == 6 then

	objectPlayAnimation('NCShag', 'singUP',true);

end

if noteType == 'BOSM3_Sing' and noteData == 7 then

	objectPlayAnimation('NCShag', 'singRIGHT',true);

end

if noteType == 'BOSM3_Sing' and noteData == 8 then

	objectPlayAnimation('NCShag', 'singLEFT',true);

end

if noteType == 'BOSM3_Sing' and noteData == 9 then

	objectPlayAnimation('NCShag', 'singDOWN',true);

end

if noteType == 'BOSM3_Sing' and noteData == 10 then

	objectPlayAnimation('NCShag', 'singUP',true);

end

if noteType == 'BOSM3_Sing' and noteData == 11 then

	objectPlayAnimation('NCShag', 'singRIGHT',true);

end

end




function noteMiss(id, noteData, noteType, isSustainNote) -- You can add Miss animation if The Character is on BF side 

end


