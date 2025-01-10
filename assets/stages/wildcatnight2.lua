function onCreate()

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('sky','wildcatnight/sky-but-again-not-in-terms-of-the-fangirl', -532, -434)
	    addLuaSprite('sky', false)
	    setLuaSpriteScrollFactor('sky', 0, 0);
	    scaleObject('sky', 1.3, 1.3);

		makeLuaSprite('city','wildcatnight/city', 1548, 200)
	    addLuaSprite('city', false)
	    setLuaSpriteScrollFactor('city', 0.2, 0.2);
	    scaleObject('city', 1, 1.1);

		makeLuaSprite('road','wildcatnight/road', 1150, 286)
	    addLuaSprite('road', false)
	    setLuaSpriteScrollFactor('road', 0.8, 0.8);
	    scaleObject('road', 1, 1);

		makeLuaSprite('quote sand','wildcatnight/quote sand', -950, 423)
	    addLuaSprite('quote sand', false)
	    setLuaSpriteScrollFactor('quote sand', 0.6, 0.6);
	    scaleObject('quote sand', 1.1, 1.1);

		makeLuaSprite('quote fences','wildcatnight/quote fences', -1000, 370)
	    addLuaSprite('quote fences', false)
	    setLuaSpriteScrollFactor('quote fences', 0.8, 0.8);
	    scaleObject('quote fences', 1.1, 1.1);

		makeLuaSprite('moon','wildcatnight/moon', -300, -195)
	    addLuaSprite('moon', false)
	    setLuaSpriteScrollFactor('moon', 0.05, 0.05);
	    scaleObject('moon', 0.75, 1);

		makeLuaSprite('building','wildcatnight/building', -253, -589)
	    addLuaSprite('building', false)
	    setLuaSpriteScrollFactor('building', 1, 1);
	    scaleObject('building', 1, 1);

		makeLuaSprite('walkside','wildcatnight/walkside', -1300, 650)
	    addLuaSprite('walkside', false)
	    setLuaSpriteScrollFactor('walkside', 1, 1);
	    scaleObject('walkside', 1.5, 1.8);

	end

	addLuaSprite('sky', false);
	addLuaSprite('city', false);
	addLuaSprite('road', false);
	addLuaSprite('quote sand', false);
	addLuaSprite('quote fences', false);
	addLuaSprite('moon', false);
	addLuaSprite('building', false);
	addLuaSprite('walkside', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
