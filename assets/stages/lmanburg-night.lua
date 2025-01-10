function onCreate()

	if not lowQuality then
		makeLuaSprite('sky','lmanburg-night/sky-in-terms-of-atmosphere-sky-and-not-the-fangirl', -300, -100)
	    addLuaSprite('sky', false)
	    setLuaSpriteScrollFactor('sky', 0, 0);
	    scaleObject('sky', 0.7, 0.7);

		makeLuaSprite('sun','lmanburg-night/herecomesdasun', -300, -100)
	    addLuaSprite('sun', false)
	    setLuaSpriteScrollFactor('sun', 0, 0);
	    scaleObject('sun', 0.7, 0.7);

		makeLuaSprite('dreamsmp','lmanburg-night/whatever-the-heck-this-is-idk-the-dream-smp', -300, -100)
	    addLuaSprite('dreamsmp', false)
	    setLuaSpriteScrollFactor('dreamsmp', 0.25, 0.25);
	    scaleObject('dreamsmp', 0.7, 0.7);

		makeLuaSprite('flag','lmanburg-night/coolflagsarecool', -300, -100)
	    addLuaSprite('flag', false)
	    setLuaSpriteScrollFactor('flag', 0.3, 0.3);
	    scaleObject('flag', 0.7, 0.7);

		makeLuaSprite('platform','lmanburg-night/platform', -150, 600)
	    addLuaSprite('platform', false)
	    setLuaSpriteScrollFactor('platform', 0.95, 0.95);
	    scaleObject('platform', 1.1, 1.1);
	end

	addLuaSprite('sky', false);
	addLuaSprite('sun', false);
	addLuaSprite('dreamsmp', false);
	addLuaSprite('flag', false);
	addLuaSprite('platform', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end