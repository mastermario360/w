function onCreate()

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('boxingnight1','miiboxingarena2/boxingnight1', -1050, -750)
	    addLuaSprite('boxingnight1', false)
	    setLuaSpriteScrollFactor('boxingnight1', 0.1, 0.1);
	    scaleObject('boxingnight1', 2, 2);

		makeLuaSprite('boxingnight2','miiboxingarena2/boxingnight2', -1050, -740)
	    addLuaSprite('boxingnight2', false)
	    setLuaSpriteScrollFactor('boxingnight2', 0.3, 0.3);
	    scaleObject('boxingnight2', 2, 2);

		makeLuaSprite('boxingnight3','miiboxingarena2/boxingnight3', -2000, -500)
	    addLuaSprite('boxingnight3', false)
	    setLuaSpriteScrollFactor('boxingnight3', 0.95, 0.95);
	    scaleObject('boxingnight3', 1.2, 1.2);

	end

	addLuaSprite('boxingnight1', false);
	addLuaSprite('boxingnight2', false);
	addLuaSprite('boxingnight3', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
